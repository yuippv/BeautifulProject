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
@Table(name = "CHOICE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Choice.findAll", query = "SELECT c FROM Choice c")
    , @NamedQuery(name = "Choice.findByChoiceid", query = "SELECT c FROM Choice c WHERE c.choiceid = :choiceid")
    , @NamedQuery(name = "Choice.findByQuestionid", query = "SELECT c FROM Choice c WHERE c.questionid = :questionid")
    , @NamedQuery(name = "Choice.findByIsright", query = "SELECT c FROM Choice c WHERE c.isright = :isright")
    , @NamedQuery(name = "Choice.findByChoice1", query = "SELECT c FROM Choice c WHERE c.choice1 = :choice1")
    , @NamedQuery(name = "Choice.findByChoice2", query = "SELECT c FROM Choice c WHERE c.choice2 = :choice2")
    , @NamedQuery(name = "Choice.findByChoice3", query = "SELECT c FROM Choice c WHERE c.choice3 = :choice3")
    , @NamedQuery(name = "Choice.findByChoice4", query = "SELECT c FROM Choice c WHERE c.choice4 = :choice4")})
public class Choice implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "CHOICEID")
    private String choiceid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "QUESTIONID")
    private String questionid;
    @Size(max = 300)
    @Column(name = "ISRIGHT")
    private String isright;
    @Size(max = 300)
    @Column(name = "CHOICE1")
    private String choice1;
    @Size(max = 300)
    @Column(name = "CHOICE2")
    private String choice2;
    @Size(max = 300)
    @Column(name = "CHOICE3")
    private String choice3;
    @Size(max = 300)
    @Column(name = "CHOICE4")
    private String choice4;

    public Choice() {
    }

    public Choice(String choiceid) {
        this.choiceid = choiceid;
    }

    public Choice(String choiceid, String questionid) {
        this.choiceid = choiceid;
        this.questionid = questionid;
    }

    public String getChoiceid() {
        return choiceid;
    }

    public void setChoiceid(String choiceid) {
        this.choiceid = choiceid;
    }

    public String getQuestionid() {
        return questionid;
    }

    public void setQuestionid(String questionid) {
        this.questionid = questionid;
    }

    public String getIsright() {
        return isright;
    }

    public void setIsright(String isright) {
        this.isright = isright;
    }

    public String getChoice1() {
        return choice1;
    }

    public void setChoice1(String choice1) {
        this.choice1 = choice1;
    }

    public String getChoice2() {
        return choice2;
    }

    public void setChoice2(String choice2) {
        this.choice2 = choice2;
    }

    public String getChoice3() {
        return choice3;
    }

    public void setChoice3(String choice3) {
        this.choice3 = choice3;
    }

    public String getChoice4() {
        return choice4;
    }

    public void setChoice4(String choice4) {
        this.choice4 = choice4;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (choiceid != null ? choiceid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Choice)) {
            return false;
        }
        Choice other = (Choice) object;
        if ((this.choiceid == null && other.choiceid != null) || (this.choiceid != null && !this.choiceid.equals(other.choiceid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.Choice[ choiceid=" + choiceid + " ]";
    }
    
}
