package com.qa;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ElsevierProjectApplicationTests {

	@Test
	public void contextLoads() {
		
//		Stripe.apiKey = "sk_test_MITXcHjPotG7ZJhmEr4NxGxa";
//
//		Map<String, Object> params = new HashMap<String, Object>();
//		params.put("amount", 999);
//		params.put("currency", "usd");
//		params.put("source", "tok_visa");
//		params.put("receipt_email", "jenny.rosen@example.com");
//		try {
//			Charge charge = Charge.create(params);
//			System.err.println("Stripe threw but it WORKED ");
//		} catch (StripeException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			System.err.println("Stripe CAUGHT an exception");
//		}
	}

}
