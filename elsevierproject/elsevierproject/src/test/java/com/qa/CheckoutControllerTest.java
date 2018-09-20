package com.qa;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

import com.elsevier.controllers.CheckoutController;

public class CheckoutControllerTest {

	private CheckoutController checkoutController = new CheckoutController();

	@Test
	public void contexLoads() throws Exception {
		assertThat(checkoutController).isNotNull();
	}

}
