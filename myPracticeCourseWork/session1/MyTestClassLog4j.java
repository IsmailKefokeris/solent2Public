import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.LogManager;



public class MyTestClassLog4j {
	
	public static Logger logger = LogManager.getLogger(MyTestClassLog4j.class);

	public static void main(String[] args) {
		
		MyTestClassLog4j myTestClassLog4j = new MyTestClassLog4j();
		myTestClassLog4j.writeAboutMe();
	}



	public void writeAboutMe() {
		
		System.out.println("This is a system out message from: " + MyTestClassLog4j.class);
		logger.error("This is a Log4j message from: " + MyTestClassLog4j.class);
	}
}
