package shop.service.impl;

public class ApplicationException 
extends RuntimeException {

public ApplicationException() {
}

public ApplicationException(
		String message) {
	super(message);
}

}