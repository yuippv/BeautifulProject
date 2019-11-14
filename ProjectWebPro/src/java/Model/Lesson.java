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
@Table(name = "LESSON")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Lesson.findAll", query = "SELECT l FROM Lesson l")
    , @NamedQuery(name = "Lesson.findByLessonid", query = "SELECT l FROM Lesson l WHERE l.lessonid = :lessonid")
    , @NamedQuery(name = "Lesson.findByLessonname", query = "SELECT l FROM Lesson l WHERE l.lessonname = :lessonname")
    , @NamedQuery(name = "Lesson.findBySubject", query = "SELECT l FROM Lesson l WHERE l.subject = :subject")
    , @NamedQuery(name = "Lesson.findByLessondescription", query = "SELECT l FROM Lesson l WHERE l.lessondescription = :lessondescription")})
public class Lesson implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "LESSONID")
    private String lessonid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "LESSONNAME")
    private String lessonname;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "SUBJECT")
    private String subject;
    @Size(max = 400)
    @Column(name = "LESSONDESCRIPTION")
    private String lessondescription;

    public Lesson() {
    }

    public Lesson(String lessonid) {
        this.lessonid = lessonid;
    }

    public Lesson(String lessonid, String lessonname, String subject) {
        this.lessonid = lessonid;
        this.lessonname = lessonname;
        this.subject = subject;
    }

    public String getLessonid() {
        return lessonid;
    }

    public void setLessonid(String lessonid) {
        this.lessonid = lessonid;
    }

    public String getLessonname() {
        return lessonname;
    }

    public void setLessonname(String lessonname) {
        this.lessonname = lessonname;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getLessondescription() {
        return lessondescription;
    }

    public void setLessondescription(String lessondescription) {
        this.lessondescription = lessondescription;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (lessonid != null ? lessonid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Lesson)) {
            return false;
        }
        Lesson other = (Lesson) object;
        if ((this.lessonid == null && other.lessonid != null) || (this.lessonid != null && !this.lessonid.equals(other.lessonid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.Lesson[ lessonid=" + lessonid + " ]";
    }
    
}
