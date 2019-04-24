<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%


ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("\\");
		String paramname=null;
		String domainname=null,file=null,sql2=null,index1=null,index=null;
		int used=0;
		long filesize = 0;
        long filesizeInKB =0;
		int used1=0;
		
		File file1 = null;
		int y= 1000 + (int)(Math.random()*9000);
		
		
	java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;		
		
		try {
			
			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("domainname"))
				{
					domainname=multi.getParameter(paramname);
				}
				if(paramname.equalsIgnoreCase("file"))
				{
					file=multi.getParameter(paramname);
				}
			
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			file = multi.getFilesystemName(paramname);
			String fPath = context.getRealPath(file);
			file1 = new File(fPath);
			index1=file1.getName();
			filesize = file1.length();
            filesizeInKB = filesize / 1024;

			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
		}		
	}
	
	        FileInputStream fs1 = null;

			Connection con=databasecon.getconnection(); 
            Statement st=con.createStatement();
			String sql="select * from domainrequest where domainname='"+domainname+"'";
	        ResultSet rs=st.executeQuery(sql);
			rs=st.executeQuery(sql);
		    if(rs.next())
		     {
		      used=rs.getInt("used");
			  index=rs.getString("first");	
		      used1=used+(int)filesizeInKB;
		     }
				sql2="update domainrequest set used=? where domainname='"+domainname+"'";
				if(index.equals("nill"))
					sql2="update domainrequest set used=?,first=? where domainname='"+domainname+"'";
					
			PreparedStatement ps=con.prepareStatement(sql2);
           		
				if(index.equals("nill")){
					ps.setInt(1,used1);
				    ps.setString(2,index1);
				}
				else
					ps.setInt(1,used1);	
       
			
	
			int x=ps.executeUpdate();
		
			
				response.sendRedirect("#?message=success");
			
			
  
     
				
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}
	
 %>
