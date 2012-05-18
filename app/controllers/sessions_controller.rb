class SessionsController < ApplicationController

  def new
    
  end

  def create
    
    if (params[:type] == 'admin')
      @admins = Administrator.all
      @admins.each do |admin|
	if (admin.uname == params[:user] && admin.password == params[:password])
	   session[:name]= admin.uname
	   session[:id]=admin.id
	   session[:type]='admin'
	   @user = admin
	end
      end
    elsif(params[:type] == 'student') 
      @sudents = Student.all
      @sudents.each do |student|
	if (student.uname == params[:user] && student.password == params[:password])
	   session[:name]= student.uname
	   session[:id]=student.id
	   session[:type]='student'
	   @user = student
	end
      end
    elsif(params[:type]=='teacher')
      @teachers = Teacher.all
      @teachers.each do |teacher|
 	if (teacher.uname == params[:user] && teacher.password == params[:password])
	   session[:name]= teacher.uname
	   session[:id]=teacher.id
	   session[:type]='teacher'
	   @user = teacher
	end
      end
    end
    if(session[:name]!= nil)
	redirect_to @user
    else
	redirect_to new_session_path, :notice => 'Autentication failure'
    end  
  end

  def destroy
    reset_session
    redirect_to administrators_path, :notice => 'Sesión over'
  end
end
