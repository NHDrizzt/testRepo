package testinho.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {

	public void execute(HttpServletRequest request, HttpServletResponse response);
	public void forward(HttpServletRequest request, HttpServletResponse response, String target);
	
}
