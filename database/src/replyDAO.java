import java.io.FileNotFoundException;

import java.lang.System;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.PreparedStatement;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/**
 * Servlet implementation class Connect
 */
@WebServlet("/replyDAO")
public class replyDAO 
{
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	
	public replyDAO(){}
	
	/** 
	 * @see HttpServlet#HttpServlet()
     */
    protected void connect_func() throws SQLException {
    	//uses default connection to the database
        if (connect == null || connect.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            connect = (Connection) DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testdb?allowPublicKeyRetrieval=true&useSSL=false&user=root&password=pass1234");
            System.out.println(connect);
        }
    }
    
    public boolean database_login(String email, String password) throws SQLException{
    	try {
    		connect_func("root","pass1234");
    		String sql = "select * from user where email = ?";
    		preparedStatement = connect.prepareStatement(sql);
    		preparedStatement.setString(1, email);
    		ResultSet rs = preparedStatement.executeQuery();
    		return rs.next();
    	}
    	catch(SQLException e) {
    		System.out.println("failed login");
    		return false;
    	}
    }
	//connect to the database 
    public void connect_func(String username, String password) throws SQLException {
        if (connect == null || connect.isClosed()) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                throw new SQLException(e);
            }
            connect = (Connection) DriverManager
  			      .getConnection("jdbc:mysql://127.0.0.1:3306/testdb?allowPublicKeyRetrieval=true&"
  			          + "useSSL=false&user=" + username + "&password=" + password);
            System.out.println(connect);
        }
    }
    
    public List<reply> listAllBillReplies(int billID) throws SQLException {
        List<reply> listReply = new ArrayList<reply>();        
        String sql = "SELECT * FROM BillResponse where billID = " + billID;
        System.out.println(sql);
        connect_func();      
        statement = (Statement) connect.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        System.out.println("LISTING");
         
        while (resultSet.next()) {
            String reply = resultSet.getString("reply");
            int replyID = resultSet.getInt("replyBID");
            int clientID = resultSet.getInt("clientID");
            Date issueDate = resultSet.getTimestamp("issueDate");
            

             
            reply replies = new reply(replyID, billID, clientID, reply, issueDate);
            listReply.add(replies);
        }        
        resultSet.close();
        disconnect();        
        return listReply;
    }
    
    public List<reply> listAllQuoteReplies(int quoteID) throws SQLException {
    	List<reply> listReply = new ArrayList<reply>();        
        String sql = "SELECT * FROM QuoteResponse where quoteID = " + quoteID;
        System.out.println(sql);
        connect_func();      
        statement = (Statement) connect.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        System.out.println("LISTING");
         
        while (resultSet.next()) {
            String note = resultSet.getString("reply");
            int replyID = resultSet.getInt("replyQID");
            int clientID = resultSet.getInt("clientID");
            Date date = resultSet.getTimestamp("issueDate");
            

             
            reply replies = new reply(replyID, quoteID, clientID, note, date);
            listReply.add(replies);
        }        
        resultSet.close();
        disconnect();        
        return listReply;
    }
    
    protected void disconnect() throws SQLException {
        if (connect != null && !connect.isClosed()) {
        	connect.close();
        }
    }
    
    
    
    
    
    
    public void init() throws SQLException, FileNotFoundException, IOException{
    	connect_func();
        statement =  (Statement) connect.createStatement();
        
        String[] INITIAL = {"USE testdb;",
					        "DROP TABLE IF EXISTS RequestResponse;",
					        "SET FOREIGN_KEY_CHECKS = 0;",
					        ("CREATE TABLE IF NOT EXISTS RequestResponse(\n"
					        		+ "  replyRID INT NOT NULL AUTO_INCREMENT,\n"
					        		+ "  requestID INT NOT NULL DEFAULT 0,\n"
					        		+ "  clientID INT NOT NULL DEFAULT 0,  \n"
					        		+ "  reply VARCHAR(50) NOT NULL DEFAULT '',\n"
					        		+ "  issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40', \n"
					        		+ "  PRIMARY KEY (replyRID),\n"
					        		+ "  FOREIGN KEY (requestID) REFERENCES Request(requestID),\n"
					        		+ "  FOREIGN KEY (clientID) REFERENCES User(clientID)\n"
					        		+ ");"),
					        "DROP TABLE IF EXISTS QuoteResponse;",
					        ("CREATE TABLE IF NOT EXISTS QuoteResponse(\n"
					        		+ "  replyRID INT NOT NULL AUTO_INCREMENT,\n"
					        		+ "  quoteID INT NOT NULL DEFAULT 0,\n"
					        		+ "  clientID INT NOT NULL DEFAULT 0,  \n"
					        		+ "  reply VARCHAR(50) NOT NULL DEFAULT '',\n"
					        		+ "  issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40', \n"
					        		+ "  PRIMARY KEY (replyQID),\n"
					        		+ "  FOREIGN KEY (quoteID) REFERENCES Quote(quoteID),\n"
					        		+ "  FOREIGN KEY (clientID) REFERENCES User(clientID)\n"
					        		+ ");"),
					        "DROP TABLE IF EXISTS BillResponse;",
					        ("CREATE TABLE IF NOT EXISTS BillResponse (\n" +
					                "    replyBID INT NOT NULL AUTO_INCREMENT,\n" +
					                "    billID INT NOT NULL DEFAULT 0,\n" +
					                "    clientID INT NOT NULL DEFAULT 0,\n" +
					                "    reply VARCHAR(50) NOT NULL DEFAULT '',\n" +
					                "    issueDate DATETIME NOT NULL DEFAULT '1990-01-31 10:24:40',\n" +
					                "    PRIMARY KEY (replyBID),\n" +
					                "    FOREIGN KEY (billID) REFERENCES Bill(billID),\n" +
					                "    FOREIGN KEY (clientID) REFERENCES User(clientID)\n" +
					                ");")
        					};
        String[] TUPLES = {
        			"alter table RequestResponse auto_increment = 600;;",
        			("insert into RequestResponse(requestID, clientID, reply)\n"
        					+ "values (21, 102, 'pass'),\n"
        					+ "(21, 102, 'Looks Good'),\n"
        					+ "(21, 102, 'Nevermind'),\n"
        					+ "(24, 105, 'OK'),\n"
        					+ "(24, 107, 'Where?'),\n"
        					+ "(25, 108, 'Too Expensive'),\n"
        					+ "(27, 109, 'Ill check'),\n"
        					+ "(28, 110, 'Thanks'),\n"
        					+ "(29, 111, 'Alright');"),
        			"alter table QuoteResponse auto_increment = 500;",
        			("insert into QuoteResponse(quoteID, clientID, reply)\n"
        					+ "values (21, 102, 'pass'),\n"
        					+ "(21, 102, 'Looks Good'),\n"
        					+ "(21, 102, 'Nevermind'),\n"
        					+ "(24, 105, 'OK'),\n"
        					+ "(24, 107, 'Where?'),\n"
        					+ "(25, 108, 'Too Expensive'),\n"
        					+ "(27, 109, 'Ill check'),\n"
        					+ "(28, 110, 'Thanks'),\n"
        					+ "(29, 111, 'Alright');"),
        			"alter table BillResponse auto_increment = 700;",
        			("insert into BillResponse(billID, clientID, reply)\n"
        					+ "values (21, 102, 'pass'),\n"
        					+ "(21, 102, 'Looks Good'),\n"
        					+ "(21, 102, 'Nevermind'),\n"
        					+ "(24, 105, 'OK'),\n"
        					+ "(24, 107, 'Where?'),\n"
        					+ "(25, 108, 'Too Expensive'),\n"
        					+ "(27, 109, 'Ill check'),\n"
        					+ "(28, 110, 'Thanks'),\n"
        					+ "(29, 111, 'Alright');"),
        			"SET FOREIGN_KEY_CHECKS = 1;"
			    	};
        
        //for loop to put these in database
        for (int i = 0; i < INITIAL.length; i++)
        	statement.execute(INITIAL[i]);
        for (int i = 0; i < TUPLES.length; i++)	
        	statement.execute(TUPLES[i]);
        disconnect();
    }
    
    
   
    
    
    
    
    
	
	

}
