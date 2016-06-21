package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Application;

@Component("applicationDao")
public class MySqlApplicationDao implements ApplicationDao {
  DataSource ds;

  public void setDataSource(DataSource ds) {
    this.ds = ds;
  }

  public List<Application> selectList() throws Exception {
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    try {
      connection = ds.getConnection();
      stmt = connection.createStatement();
      rs = stmt.executeQuery(
          "SELECT *" + 
          " FROM APPLICATION" +
          " ORDER BY ANO DESC");

      ArrayList<Application> applications = new ArrayList<Application>();

      while(rs.next()) {
        applications.add(new Application()
          .setAno(rs.getInt("ANO"))
          .setRno(rs.getInt("RNO"))
          .setTitle(rs.getString("TITLE"))
          .setEmail(rs.getString("EMAIL"))
          .setCompany(rs.getString("COMPANY"))
          .setJob(rs.getString("JOB"))
          .setQuestion1(rs.getString("QUESTION1"))
          .setAnswer1(rs.getString("ANSWER1"))
          .setQuestion2(rs.getString("QUESTION2"))
          .setAnswer2(rs.getString("ANSWER2"))
          .setQuestion3(rs.getString("QUESTION3"))
          .setAnswer3(rs.getString("ANSWER3"))
          .setQuestion4(rs.getString("QUESTION4"))
          .setAnswer4(rs.getString("ANSWER4"))
          .setQuestion5(rs.getString("QUESTION5"))
          .setAnswer5(rs.getString("ANSWER5"))
          .setQuestion6(rs.getString("QUESTION6"))
          .setAnswer6(rs.getString("ANSWER6"))
          .setCreatedDate(rs.getDate("CRE_DATE"))
          	);
      }

      return applications;

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (rs != null) rs.close();} catch(Exception e) {}
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }

  public int insert(Application application) throws Exception  {
    Connection connection = null;
    PreparedStatement stmt = null;

    try {
      connection = ds.getConnection();
      stmt = connection.prepareStatement(
        "INSERT INTO APPLICATION"
        + "(RNO,TITLE,EMAIL,COMPANY,JOB,QUESTION1,ANSWER1,QUESTION2,ANSWER2,QUESTION3,ANSWER3,QUESTION4,ANSWER4,QUESTION5,ANSWER5,QUESTION6,ANSWER6,CRE_DATE)"
        + " VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,NOW())");
      stmt.setInt(1, application.getRno());
      stmt.setString(2, application.getTitle());
      stmt.setString(3, application.getEmail());
      stmt.setString(4, application.getCompany());
      stmt.setString(5, application.getJob());
      stmt.setString(6, application.getQuestion1());
      stmt.setString(7, application.getAnswer1());
      stmt.setString(8, application.getQuestion2());
      stmt.setString(9, application.getAnswer2());
      stmt.setString(10, application.getQuestion3());
      stmt.setString(11, application.getAnswer3());
      stmt.setString(12, application.getQuestion4());
      stmt.setString(13, application.getAnswer4());
      stmt.setString(14, application.getQuestion5());
      stmt.setString(15, application.getAnswer5());
      stmt.setString(16, application.getQuestion6());
      stmt.setString(17, application.getAnswer6());
     // stmt.setDate(12, new java.sql.Date(application.getCreatedDate().getTime()));
      
      return stmt.executeUpdate();

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }
  
 
  public Application selectOne(int no) throws Exception { 
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
      connection = ds.getConnection();
      stmt = connection.createStatement();
      rs = stmt.executeQuery(
        "SELECT *"
        + " FROM APPLICATION WHERE ANO=" + no);    
      if (rs.next()) {
        return new Application()
        .setAno(rs.getInt("ANO"))
        .setRno(rs.getInt("RNO"))
        .setTitle(rs.getString("TITLE"))
        .setEmail(rs.getString("EMAIL"))
        .setCompany(rs.getString("COMPANY"))
        .setJob(rs.getString("JOB"))
        .setQuestion1(rs.getString("QUESTION1"))
        .setAnswer1(rs.getString("ANSWER1"))
        .setQuestion2(rs.getString("QUESTION2"))
        .setAnswer2(rs.getString("ANSWER2"))
        .setQuestion3(rs.getString("QUESTION3"))
        .setAnswer3(rs.getString("ANSWER3"))
        .setQuestion4(rs.getString("QUESTION4"))
        .setAnswer4(rs.getString("ANSWER4"))
        .setQuestion5(rs.getString("QUESTION5"))
        .setAnswer5(rs.getString("ANSWER5"))
        .setQuestion6(rs.getString("QUESTION6"))
        .setAnswer6(rs.getString("ANSWER6"))
        .setCreatedDate(rs.getDate("CRE_DATE"));

      } else {
        throw new Exception("해당 번호의 자기소개서를 찾을 수 없습니다.");
      }

    } catch (Exception e) {
      throw e;
    } finally {
      try {if (rs != null) rs.close();} catch(Exception e) {}
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }

  
  public int update(Application application) throws Exception { 
    Connection connection = null;
    PreparedStatement stmt = null;
    
    try {
      connection = ds.getConnection();
      
      stmt = connection.prepareStatement(
        "UPDATE APPLICATION SET "
    		  
        + " TITLE=?,"
        + " EMAIL=?,"
        + " COMPANY=?,"
        + " JOB=?,"
        + " QUESTION1=?,"
        + " ANSWER1=?,"
        + " QUESTION2=?,"
        + " ANSWER2=?,"
        + " QUESTION3=?,"
        + " ANSWER3=?,"
        + " QUESTION4=?,"
        + " ANSWER4=?,"
        + " QUESTION5=?,"
        + " ANSWER5=?,"
        + " QUESTION6=?,"
        + " ANSWER6=?"
        + " WHERE ANO=?");
    /*
      stmt.setString(1, apllication.getTitle());
      stmt.setString(2, apllication.getContent());
      stmt.setDate(3, new java.sql.Date(apllication.getStartDate().getTime()));
      stmt.setDate(4, new java.sql.Date(apllication.getEndDate().getTime()));
      stmt.setInt(5, apllication.getState());
      stmt.setString(6, apllication.getTags());
      stmt.setInt(7, apllication.getNo());
      RNO,TITLE,EMAIL,COMPANY,JOB,QUESTION1,ANSWER1,QUESTION2,ANSWER2,QUESTION3,ANSWER3,QUESTION4,ANSWER4,QUESTION5,ANSWER5,QUESTION6,ANSWER6,CRE_DATE
      */
      stmt.setString(1, application.getTitle());
      stmt.setInt(2, application.getAno());
      stmt.setString(2, application.getEmail());
      stmt.setString(3, application.getCompany());
      stmt.setString(4, application.getJob());
      stmt.setString(5, application.getQuestion1());
      stmt.setString(6, application.getAnswer1());
      stmt.setString(7, application.getQuestion2());
      stmt.setString(8, application.getAnswer2());
      stmt.setString(9, application.getQuestion3());
      stmt.setString(10, application.getAnswer3());
      stmt.setString(11, application.getQuestion4());
      stmt.setString(12, application.getAnswer4());
      stmt.setString(13, application.getQuestion5());
      stmt.setString(14, application.getAnswer5());
      stmt.setString(15, application.getQuestion6());
      stmt.setString(16, application.getAnswer6());
      stmt.setInt(17, application.getAno());
      return stmt.executeUpdate();

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }  

  public int delete(int no) throws Exception {  
    Connection connection = null;
    Statement stmt = null;

    try {
      connection = ds.getConnection();
      stmt = connection.createStatement();
      return stmt.executeUpdate(
          "DELETE FROM APPLICATION WHERE ANO=" + no);

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }
  
}
