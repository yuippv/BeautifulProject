/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Models.Choice;
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
public class ResultController {

    public boolean findbyques(String id) {
        ArrayList<Choice> ch = new ArrayList<>();
        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("select isRight from choice where choiceId=?");
            p.setString(1, id);

            ResultSet rs = p.executeQuery();
            if (rs.next()) {
                if (rs.getString("isRight").equals("T")) {
                    return true;
                } else {
                    return false;
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(ResultController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public String findisright(String questionid) {

        Connection c = BuildConnection.getConnection();
        try {
            PreparedStatement p = c.prepareStatement("select isRight from choice where questionId=?");
            p.setString(1, questionid);

            ResultSet rs = p.executeQuery();
            if (rs.next()) {

                return rs.getString("isright");

            }

        } catch (SQLException ex) {
            Logger.getLogger(ResultController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String selectchoicethatright(String isright, String questionid) {
        Connection c = BuildConnection.getConnection();
        try {

            String choice1 = "";
            String choice2 = "";
            String choice3 = "";
            String choice4 = "";

            PreparedStatement p = c.prepareStatement("select * from choice where questionId=?");

            p.setString(1, questionid);

            ResultSet rs = p.executeQuery();
            while (rs.next()) {
                choice1 = rs.getString("choice1");
                choice2 = rs.getString("choice2");
                choice3 = rs.getString("choice3");
                choice4 = rs.getString("choice4");

            }
            if (isright.equals("1")) {
                return choice1;
            } else if (isright.equals("2")) {
                return choice2;
            } else if (isright.equals("3")) {
                return choice3;
            } else if (isright.equals("4")) {
                return choice4;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ResultController.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        ResultController rc = new ResultController();

    }
}
