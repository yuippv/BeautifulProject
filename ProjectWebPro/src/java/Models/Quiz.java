/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;

/**
 *
 * @author yypsx
 */
public class Quiz {
    String questionId;
    String question;
    ArrayList<Choice> choices;

    public ArrayList<Choice> getChoices() {
        return choices;
    }

    public void setChoices(ArrayList<Choice> choices) {
        this.choices = choices;
    }

    public Quiz(String questionId, String question, ArrayList<Choice> choices) {
        this.questionId = questionId;
        this.question = question;
        this.choices = choices;
    }
    
    
    public Quiz(String questId, String questName) {
        this.questionId = questId;
        this.question = questName;
    }

    public String getQuestionId() {
        return questionId;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestionId(String questionId) {
        this.questionId = questionId;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @Override
    public String toString() {
        return "Question{" + "questionId=" + questionId + ", question=" + question + ", choices=" + choices + '}';
    }

    

    
    
    
    
}
