package com.hunghiep.springboot.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.FileContent;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.Permission;
import com.hunghiep.springboot.service.IndexService;
import com.hunghiep.springboot.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	IndexService indexService;
	@GetMapping("/users")
	public String users() {
		return userService.getUsers().toString();
	}

	@RequestMapping(value = "/login/enter")
	public String login(@RequestParam String username, @RequestParam String password, HttpServletRequest request) {
		if (!(username.equals("") || password.equals(""))) {
			if (userService.login(username, password)) {
				request.getSession().setAttribute("user", username);
				return "redirect:/";
			}	
		}
		return "redirect:";
	}

	@RequestMapping("/up")
	public 	String upload(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws Exception 
	{
		
		  Drive service = getDriveService();

		File fileMetadata = new File();
		  fileMetadata.setTitle(file.getOriginalFilename());
		java.io.File filePath = new java.io.File("D:/KQDK.jpg");
		FileContent mediaContent = new FileContent("image/jpeg", filePath);
		File f = service.files().insert(fileMetadata, mediaContent)
		    .setFields("id")
		    .execute();
		
//		Permission permission = new Permission();
//		permission.setValue("");
//		permission.setType("anyone");
//		permission.setRole("reader");
//		service.permissions().insert(file.getId(), permission).execute();
		request.getSession().setAttribute("link", "https://drive.google.com/uc?export=view&id="+f.getId());

		return "redirect:/edit";
		
	}
	
	 private static final String APPLICATION_NAME =
		        "Drive API Java Quickstart";

		    /** Directory to store user credentials for this application. */
		    private static final java.io.File DATA_STORE_DIR = new java.io.File(
		        System.getProperty("user.home"), ".credentials/drive-java-quickstart");

		    /** Global instance of the {@link FileDataStoreFactory}. */
		    private static FileDataStoreFactory DATA_STORE_FACTORY;

		    /** Global instance of the JSON factory. */
		    private static final JsonFactory JSON_FACTORY =
		        JacksonFactory.getDefaultInstance();

		    /** Global instance of the HTTP transport. */
		    private static HttpTransport HTTP_TRANSPORT;

		    /** Global instance of the scopes required by this quickstart.
		     *
		     * If modifying these scopes, delete your previously saved credentials
		     * at ~/.credentials/drive-java-quickstart
		     */
		    private static final List<String> SCOPES =
		        Arrays.asList(DriveScopes.DRIVE);

		    static {
		        try {
		            HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
		            DATA_STORE_FACTORY = new FileDataStoreFactory(DATA_STORE_DIR);
		        } catch (Throwable t) {
		            t.printStackTrace();
		            System.exit(1);
		        }
		    }

		    /**
		     * Creates an authorized Credential object.
		     * @return an authorized Credential object.
		     * @throws Exception 
		     */
		    public static Credential authorize() throws Exception {
		        // Load client secrets.
		        InputStream in =
		            UserController.class.getResourceAsStream("/client_secret.json");
		        GoogleClientSecrets clientSecrets =
		            GoogleClientSecrets.load(JSON_FACTORY, new InputStreamReader(in));

		        // Build flow and trigger user authorization request.
		        GoogleAuthorizationCodeFlow flow =
		                new GoogleAuthorizationCodeFlow.Builder(
		                        HTTP_TRANSPORT, JSON_FACTORY, clientSecrets, SCOPES)
		                .setDataStoreFactory(DATA_STORE_FACTORY)
		                .setAccessType("offline")
		                .build();
		        Credential credential = new AuthorizationCodeInstalledApp(
		            flow, new LocalServerReceiver()).authorize("user");
		        System.out.println(
		                "Credentials saved to " + DATA_STORE_DIR.getAbsolutePath());
		        return credential;
		    }

		    /**
		     * Build and return an authorized Drive client service.
		     * @return an authorized Drive client service
		     * @throws Exception 
		     */
		    public static Drive getDriveService() throws Exception {
		        Credential credential = authorize();
		        return new Drive.Builder(
		                HTTP_TRANSPORT, JSON_FACTORY, credential)
		                .setApplicationName(APPLICATION_NAME)
		                .build();
		    }

	
}
