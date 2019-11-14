/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author yypsx
 */
@Entity
@Table(name = "QUIZ")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Quiz.findAll", query = "SELECT q FROM Quiz q")
    , @NamedQuery(name = "Quiz.findByQuestionid", query = "SELECT q FROM Quiz q WHERE q.questionid = :questionid")
    , @NamedQuery(name = "Quiz.findBySubject", query = "SELECT q FROM Quiz q WHERE q.subject = :subject")
    , @NamedQuery(name = "Quiz.findByLessonid", query = "SELECT q FROM Quiz q WHERE q.lessonid = :lessonid")
    , @NamedQuery(name = "Quiz.findByQuestion", query = "SELECT q FROM Quiz q WHERE q.question = :question")})
public class Quiz implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "QUESTIONID")
    private String questionid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "SUBJECT")
    private String subject;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "LESSONID")
    private String lessonid;
    @Size(max = 300)
    @Column(name = "QUESTION")
    private String question;

    public Quiz() {
    }

    public Quiz(String questionid) {
        this.questionid = questionid;
    }

    public Quiz(String questionid, String subject, String lessonid) {
        this.questionid = questionid;
        this.subject = subject;
        this.lessonid = lessonid;
    }

    public String getQuestionid() {
        return questionid;
    }

    public void setQuestionid(String questionid) {
        this.questionid = questionid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getLessonid() {
        return lessonid;
    }

    public void setLessonid(String lessonid) {
        this.lessonid = lessonid;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (questionid != null ? questionid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Quiz)) {
            return false;
        }
        Quiz other = (Quiz) object;
        if ((this.questionid == null && other.questionid != null) || (this.questionid != null && !this.questionid.equals(other.questionid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.Quiz[ questionid=" + questionid + " ]";
    }
    
}
