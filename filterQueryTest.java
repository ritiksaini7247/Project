package com.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import com.model.CBTTrainee;

public class filterQueryTest {

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;

	public List<CBTTrainee> filterTrainees(String technology, String university, String college, String visitedCollege,
			String HR, String result) throws SQLException, ClassNotFoundException, IOException {

		con = GetConnection.getConnection();

		int noOfFilter = 0;
		String technologyy = technology, universityy = university, collegee = college, vcollegee = visitedCollege,
				HRR = HR, resultt = result;
		String columns = "", query = "";
		int i = 1;
		HashMap<Integer, String> order = new HashMap<Integer, String>();
		if (technologyy.length() > 0) {
			columns = columns + " trainee_technology_name = ? AND";
			order.put(i, technology);
			i++;
			noOfFilter++;
		}
		if (universityy.length() > 0) {
			columns = columns + " trainee_university_name = ? AND";
			order.put(i, university);
			i++;
			noOfFilter++;
		}
		if (collegee.length() > 0) {
			columns = columns + " trainee_college_name = ? AND ";
			order.put(i, college);
			i++;
			noOfFilter++;
		}
		if (vcollegee.length() > 0) {
			columns = columns + " trainee_visited_college_name = ? AND ";
			order.put(i, visitedCollege);
			i++;
			noOfFilter++;
		}
		if (HRR.length() > 0) {
			columns = columns + " trainee_HR_name = ? AND ";
			order.put(i, HR);
			i++;
			noOfFilter++;
		}
		if (resultt.length() > 0) {
			columns = columns + " trainee_result = ? AND ";
			order.put(i, result);
			i++;
			noOfFilter++;
		}

		if (noOfFilter == 0) {
			pstmt = con.prepareStatement("SELECT * FROM cbt_trainee");
		} else {
			columns = columns.substring(0, (columns.length() - 4));

			query = "select * from cbt_trainee where " + columns;
			// System.out.println(query);
			// String prepaeStat = "";
			pstmt = con.prepareStatement(query);
			Iterator<Map.Entry<Integer, String>> itr = order.entrySet().iterator();
			while (itr.hasNext()) {
				Map.Entry<Integer, String> entry = itr.next();
				pstmt.setString(entry.getKey(), entry.getValue());
				// prepaeStat = "pstmt.setString(" + entry.getKey() + "," + entry.getValue() +
				// ")";
				// System.out.println("---"+prepaeStat);
			}

		}
		rs = pstmt.executeQuery();
		List<CBTTrainee> filteredTrainees = new ArrayList<>();
		while (rs.next()) {
			CBTTrainee cbtTrainee = new CBTTrainee();
			cbtTrainee.setTraineeid(rs.getInt("trainee_id"));
			cbtTrainee.setTraineeName(rs.getString("trainee_name"));
			cbtTrainee.setTraineeEmail(rs.getString("trainee_email"));
			cbtTrainee.setTraineeContactNumber(rs.getString("trainee_contact_number"));
			cbtTrainee.setTraineeTechnologyName(rs.getString("trainee_technology_name"));
			cbtTrainee.setTraineeUniversityName(rs.getString("trainee_university_name"));
			cbtTrainee.setTraineeCollegeName(rs.getString("trainee_college_name"));
			cbtTrainee.setTraineeVisitedCollegeName(rs.getString("trainee_visited_college_name"));
			cbtTrainee.setTraineeCollegeRollNo(rs.getString("trainee_college_roll_no"));
			cbtTrainee.setTrainee10thPercentage(rs.getString("trainee_10th_percentage"));
			cbtTrainee.setTrainee12thPercentage(rs.getString("trainee_12th_percentage"));
			cbtTrainee.setTraineeHRName(rs.getString("trainee_HR_name"));
			cbtTrainee.setTraineeCreatedAt(rs.getTimestamp("trainee_created_at"));
			cbtTrainee.setTraineeAttempt(rs.getInt("trainee_attemt"));
			cbtTrainee.setTraineeDocuments(rs.getString("trainee_documents"));
			cbtTrainee.setTraineeResult(rs.getString("trainee_result"));
			filteredTrainees.add(cbtTrainee);
		}

		if (filteredTrainees.size() > 0)
			return filteredTrainees;
		return null;
	}

	public static void main(String[] args) throws SQLException, ClassNotFoundException, IOException {
		// technology,university,college,visited college,HR,result
		// trainee_technology_name,trainee_university_name,trainee_college_name,
		// trainee_visited_college_name,trainee_HR_name,trainee_result

		String technology = "87799";
		String university = "";
		String college = "";
		String visitedCollege = "";
		String HR = "";
		String result = "";

		System.out.println(
				new filterQueryTest().filterTrainees(technology, university, college, visitedCollege, HR, result));

	}

}
