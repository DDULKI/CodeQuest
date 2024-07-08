package gaib;

import java.sql.*;
import gaib.GaibDTO;
import java.util.*;
     
/**
 * GaibDAO
 */
public class GaibDAO {
          
    private Connection conn=null;
    private PreparedStatement ps=null;
    private ResultSet rs=null;
    
    public GaibDAO() {
        try {
            String dbURL = "jdbc:mysql://localhost:3306/ddulki";
            String dbID = "root";
            String dbPW = "1234";
            Class.forName("com.mysql.jdbc.Driver"); // jdbc 드라이버 로딩 
            conn = DriverManager.getConnection(dbURL, dbID, dbPW);

        } catch (Exception e) {
           e.printStackTrace();
        }
    }
        
    public int signup(GaibDTO gaibDTO){
        String SQL = "INSERT INTO naver_member(id, pw, name, birth, gender, email, nation, hp) VALUES(?,?,?,?,?,?,?,?)";
        try {
            ps = conn.prepareStatement(SQL);
            ps.setString(1, gaibDTO.getId());
            ps.setString(2, gaibDTO.getPw());
            ps.setString(3, gaibDTO.getName());
            ps.setString(4, gaibDTO.getBirth());
            ps.setString(5, gaibDTO.getGender());
            ps.setString(6, gaibDTO.getEmail());
            ps.setString(7, gaibDTO.getNation());
            ps.setString(8, gaibDTO.getHp());
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(rs!= null){rs.close();}
                if(ps!= null){ps.close();}
                if(conn!= null){conn.close();}
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        return -1;
    }

    public int update(GaibDTO gaibDTO){
        String SQL = "UPDATE naver_member SET pw=?, name=?, birth=?, gender=?, email=?, nation=?, hp=? WHERE id=?";
        try {
            ps = conn.prepareStatement(SQL);
            ps.setString(1, gaibDTO.getPw());
            ps.setString(2, gaibDTO.getName());
            ps.setString(3, gaibDTO.getBirth());
            ps.setString(4, gaibDTO.getGender());
            ps.setString(5, gaibDTO.getEmail());
            ps.setString(6, gaibDTO.getNation());
            ps.setString(7, gaibDTO.getHp());
            ps.setString(8, gaibDTO.getId());
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(rs!= null){rs.close();}
                if(ps!= null){ps.close();}
                if(conn!= null){conn.close();}
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        return -1;
    }

    public int delete(GaibDTO gaibDTO){
        String SQL = "DELETE FROM naver_member WHERE id=? AND name=?";
        try {
            ps = conn.prepareStatement(SQL);
            ps.setString(1, gaibDTO.getId());
            ps.setString(2, gaibDTO.getName());
            return ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(rs!= null){rs.close();}
                if(ps!= null){ps.close();}
                if(conn!= null){conn.close();}
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        return -1;
    }

    public int signin(String id, String pw){
        String SQL = "SELECT pw FROM naver_member WHERE id=?";
        try {
            ps = conn.prepareStatement(SQL);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if(rs.next()){
                if(rs.getString(1).equals(pw)){
                    return 1;
                }
                else {
                    return 0;
                }
            }
            else {
                return -1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try{
                if(rs!= null){rs.close();}
                if(ps!= null){ps.close();}
                if(conn!= null){conn.close();}
            }
            catch(Exception e){
                e.printStackTrace();
            }
            
        }
        return -2;
    }

    // 개인정보 수정하기 위해서 업데이트폼에 데이터 내보내기
    public GaibDTO getJoin(String id){
        GaibDTO gaibDTO = new GaibDTO();

        String SQL = "SELECT * FROM naver_member WHERE id =? ";
        try { 
            ps= conn.prepareStatement(SQL);
            ps.setString(1, id);
            rs = ps.executeQuery();
            if(rs.next()){
                gaibDTO.setId(rs.getString("id"));
                gaibDTO.setPw(rs.getString("pw"));
                gaibDTO.setName(rs.getString("name"));
                gaibDTO.setBirth(rs.getString("birth"));
                gaibDTO.setGender(rs.getString("gender"));
                gaibDTO.setEmail(rs.getString("email"));
                gaibDTO.setNation(rs.getString("nation"));
                gaibDTO.setHp(rs.getString("hp"));
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
        finally {  // 무조건 실행하는 키워드 
            try {
                if(rs!= null){ rs.close();}
                if(ps!= null){ ps.close();}
                if(conn != null){ conn.close();}
            
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        return gaibDTO;
    }

    public List<GaibDTO> getJoinList(){
        GaibDTO gaibDTO = null;
        List<GaibDTO> list = new ArrayList<>();

        String SQL = "SELECT * FROM naver_member";
        try {     
            ps = conn.prepareStatement(SQL);
            rs = ps.executeQuery();
            while(rs.next()){
                gaibDTO = new GaibDTO(); // 꼭 넣어줘야함.
                gaibDTO.setId(rs.getString("id"));
                gaibDTO.setPw(rs.getString("pw"));
                gaibDTO.setName(rs.getString("name"));
                gaibDTO.setBirth(rs.getString("birth"));
                gaibDTO.setGender(rs.getString("gender"));
                gaibDTO.setEmail(rs.getString("email"));
                gaibDTO.setNation(rs.getString("nation"));
                gaibDTO.setHp(rs.getString("hp"));
                list.add(gaibDTO);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        finally {
            try {
                if(rs!=null){rs.close();}
                if(ps!=null){ps.close();}
                if(conn!=null){conn.close();}
            }
            catch(Exception e){
                e.printStackTrace();
            }
        }
        return list;

    }
}