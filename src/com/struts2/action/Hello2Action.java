package com.struts2.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Hello2Action extends ActionSupport {
    private String username;

    private static final long serialVersionUID = 1L;

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public String execute() throws Exception {
        ActionContext context = ActionContext.getContext();
        if ("Hello".equals(username)) {
            context.put("error", "姓名不能为Hello");
            return ERROR;

        } else {
            context.put("username", username);
            return SUCCESS;
        }
    }

}
