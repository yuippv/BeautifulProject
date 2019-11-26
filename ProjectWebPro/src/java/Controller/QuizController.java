/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Choice;
import Models.Quiz;
import db.BuildConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author yypsx
 */
public class QuizController {

    public ArrayList<Quiz> findbyques(String id) {
        ArrayList<Quiz> ques = new ArrayList<>();
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("select * from quiz where lessonid=?");
            p.setString(1, id);

            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                Quiz q = new Quiz(rs.getString("questionId"), rs.getString("question"), showchoi(rs.getString("questionId")));
                ques.add(q);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ques;
    }

    public ArrayList<Choice> showchoi(String questionId) {
        ArrayList<Choice> aw = new ArrayList<>();
        Connection conn = BuildConnection.getConnection();
        try {
            PreparedStatement pstm = conn.prepareStatement("select * from choice where questionId=?");
            pstm.setString(1, questionId);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                Choice a = new Choice(rs.getString("choiceId"), rs.getString("choice1"), rs.getString("choice2"), rs.getString("choice3"),
                         rs.getString("choice4"), rs.getString("isRight"));
                aw.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return aw;
    }

    public static void main(String[] args) {
        QuizController qc = new QuizController();

        System.out.println(qc.findbyques("MTH101"));
    }
}
