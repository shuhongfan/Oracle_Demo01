package com.itheima.oracle.procedure;

import java.sql.SQLException;

import com.itheima.oracle.domain.Owners;
import com.itheima.oracle.utils.DaoUtil;

import oracle.jdbc.driver.OracleTypes;

public class TestProcedure {
	/**
	 * ����
	 * 
	 * @param owners
	 */
	public static void add(Owners owners) {

		java.sql.Connection conn = null;
		java.sql.CallableStatement stmt = null;

		try {
			conn = DaoUtil.getConnection();
			//����д������ͨ��sql��䲻ͬ
			stmt = conn.prepareCall("{call pro_owners_add(?,?,?,?,?)}");

			stmt.setString(1, owners.getName());
			stmt.setLong(2, owners.getAddressid());
			stmt.setString(3, owners.getHousenumber());
			stmt.setString(4, owners.getWatermeter());
			stmt.setLong(5, owners.getOwnertypeid());

			stmt.execute();
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			DaoUtil.closeAll(null, stmt, conn);
		}
	}
	
	/**
	 * ���� 
	 * @param owners
	 */
	public static long addOut(Owners owners){
		long id=0;
		java.sql.Connection conn=null;
		java.sql.CallableStatement stmt=null;
		try {
			conn=DaoUtil.getConnection();
			stmt=conn.prepareCall("{call pro_owners_add(?,?,?,?,?,?)}");
			stmt.setString(1, owners.getName());
			stmt.setLong(2, owners.getAddressid());
			stmt.setString(3, owners.getHousenumber());
			stmt.setString(4, owners.getWatermeter());			
			stmt.setLong(5, owners.getOwnertypeid());
			stmt.registerOutParameter(6, OracleTypes.NUMBER);//ע�ᴫ����������
			stmt.execute();			
			id=stmt.getLong(6);//��ȡ��������
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DaoUtil.closeAll(null, stmt, conn);
		}	
		return id;
	}


}
