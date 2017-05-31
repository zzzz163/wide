package pw.nullpointer.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by WeJan on 2017/5/30.
 */
public class User implements Serializable {
    private static final long serialVersionUID = 7449000545973967567L;

    private int id;

    private String name;

    private Date birthday;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
