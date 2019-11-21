/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

/**
 *
 * @author yypsx
 */
public class Choice {
    String choiceId;
    String Choice1;
    String Choice2;
    String Choice3;
    String Choice4;
    String isRight;

    public Choice(String choiceId, String Choice1, String Choice2, String Choice3, String Choice4, String isRight) {
        this.choiceId = choiceId;
        this.Choice1 = Choice1;
        this.Choice2 = Choice2;
        this.Choice3 = Choice3;
        this.Choice4 = Choice4;
        this.isRight = isRight;
    }
    
    public Choice (){
        
    }


    public String getChoiceId() {
        return choiceId;
    }

    public void setChoiceId(String choiceId) {
        this.choiceId = choiceId;
    }

    public String getChoice1() {
        return Choice1;
    }

    public void setChoice1(String Choice1) {
        this.Choice1 = Choice1;
    }

    public String getChoice2() {
        return Choice2;
    }

    public void setChoice2(String Choice2) {
        this.Choice2 = Choice2;
    }

    public String getChoice3() {
        return Choice3;
    }

    public void setChoice3(String Choice3) {
        this.Choice3 = Choice3;
    }

    public String getChoice4() {
        return Choice4;
    }

    public void setChoice4(String Choice4) {
        this.Choice4 = Choice4;
    }

    public String getIsRight() {
        return isRight;
    }

    public void setIsRight(String isRight) {
        this.isRight = isRight;
    }

    @Override
    public String toString() {
        return "Choice{" + "choiceId=" + choiceId + ", Choice1=" + Choice1 + ", Choice2=" + Choice2 + ", Choice3=" + Choice3 + ", Choice4=" + Choice4 + ", isRight=" + isRight + '}';
    }

}
