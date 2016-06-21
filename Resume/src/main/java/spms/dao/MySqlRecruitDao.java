package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Recruit;

@Component("recruitDao")
public class MySqlRecruitDao implements RecruitDao {
  DataSource ds;

  public void setDataSource(DataSource ds) {
    this.ds = ds;
  }

  public List<Recruit> selectList() throws Exception {
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    try {
      connection = ds.getConnection();
      stmt = connection.createStatement();
      rs = stmt.executeQuery(
          "SELECT *" + 
          " FROM RECRUIT" +
          " ORDER BY RNO DESC");

      ArrayList<Recruit> recruits = new ArrayList<Recruit>();

      while(rs.next()) {
        recruits.add(new Recruit()
          .setRno(rs.getInt("RNO"))
          .setCompany(rs.getString("COMPANY"))
          .setJob(rs.getString("JOB"))
          .setQuestion(rs.getString("QUESTION"))
          .setImg(rs.getString("IMG"))
          .setStartedDate(rs.getString("STA_DATE"))
          .setEndedDate(rs.getString("END_DATE"))
          );
      }

      return recruits;

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (rs != null) rs.close();} catch(Exception e) {}
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }

  public int insert(Recruit recruit) throws Exception  {
    Connection connection = null;
    PreparedStatement stmt = null;

    try {
      connection = ds.getConnection();
      stmt = connection.prepareStatement(
        "INSERT INTO RECRUIT"
        + "(COMPANY,JOB,QUESTION,IMG,STA_DATE,END_DATE)"
        + " VALUES (?,?,?,?,?,?)");
      stmt.setString(1, recruit.getCompany());
      stmt.setString(2, recruit.getJob());
      stmt.setString(3, recruit.getQuestion());
      stmt.setString(4, recruit.getImg());
      stmt.setString(5, recruit.getStartedDate());
      stmt.setString(6, recruit.getEndedDate());
      
      return stmt.executeUpdate();

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }
  
  public Recruit selectOne(int no) throws Exception { 
    Connection connection = null;
    Statement stmt = null;
    ResultSet rs = null;
    try {
      connection = ds.getConnection();
      stmt = connection.createStatement();
      rs = stmt.executeQuery(
        "SELECT *"
        + " FROM RECRUIT WHERE RNO=" + no);    
      if (rs.next()) {
        return new Recruit()
	        .setRno(rs.getInt("RNO"))
	        .setCompany(rs.getString("COMPANY"))
	        .setJob(rs.getString("JOB"))
	        .setQuestion(rs.getString("QUESTION"))
	        .setImg(rs.getString("IMG"))
	        .setStartedDate(rs.getString("STA_DATE"))
	        .setEndedDate(rs.getString("END_DATE"));

      } else {
        throw new Exception("해당 번호의 프로젝트를 찾을 수 없습니다.");
      }

    } catch (Exception e) {
      throw e;
    } finally {
      try {if (rs != null) rs.close();} catch(Exception e) {}
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }

  public int update(Recruit recruit) throws Exception { 
    Connection connection = null;
    PreparedStatement stmt = null;
    try {
      connection = ds.getConnection();
      stmt = connection.prepareStatement(
        "UPDATE RECRUIT SET "
        + " COMPANY=?,"
        + " JOB=?,"
        + " QUESTION=?,"
        + " IMG=?,"
        + " STA_DATE=?,"
        + " END_DATE=?"     
        + " WHERE RNO=?");
      stmt.setString(1, recruit.getCompany());
      stmt.setString(2, recruit.getJob());
      stmt.setString(3, recruit.getQuestion());
      stmt.setString(4, recruit.getImg());
      stmt.setString(5, recruit.getStartedDate());
      stmt.setString(6, recruit.getEndedDate());
      stmt.setInt(7, recruit.getRno());

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
          "DELETE FROM RECRUIT WHERE RNO=" + no);

    } catch (Exception e) {
      throw e;

    } finally {
      try {if (stmt != null) stmt.close();} catch(Exception e) {}
      try {if (connection != null) connection.close();} catch(Exception e) {}
    }
  }
}
