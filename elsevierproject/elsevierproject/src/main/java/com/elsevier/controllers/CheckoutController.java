package com.elsevier.controllers;

import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.elsevier.models.Shipping;
import com.stripe.Stripe;
import com.stripe.exception.StripeException;
import com.stripe.model.Charge;

@SessionAttributes(names={"book_counts"})
@Controller
public class CheckoutController {

	@RequestMapping("/checkoutPAY")
	public ModelAndView checkoutPAY(@ModelAttribute("Shipping") Shipping shipping,@ModelAttribute("book_counts") Map<Integer,Integer> bookCounts,@RequestParam("order_total") String orderTotal) throws StripeException
	{
		System.out.println("First name "+shipping.getFirstName());
		ModelAndView modelAndView = new ModelAndView("checkout","order_total", orderTotal);
		modelAndView.addObject("shipping_address", shipping);
		modelAndView.addObject("order_total", orderTotal);
		modelAndView.addObject("book_counts", bookCounts);
	    return modelAndView;
	}
	
	
	@RequestMapping("/checkoutProcess")
	public ModelAndView checkoutProcess(@ModelAttribute("Shipping") Shipping shipping,@ModelAttribute("book_counts") Map<Integer,Integer> bookCounts,@RequestParam("order_total") String orderTotal) throws StripeException
	{
		System.err.println("Payment has been processed");
		
		System.out.println("First name "+shipping.getFirstName());
		ModelAndView modelAndView = new ModelAndView("payment_form","order_total", orderTotal);
		modelAndView.addObject("shipping_address", shipping);
		modelAndView.addObject("order_total", orderTotal);
		modelAndView.addObject("book_counts", bookCounts);
	    return modelAndView;
	}
	
	@RequestMapping("/newcheckoutProcess")
	public ModelAndView newcheckoutProcess(@ModelAttribute("Shipping") Shipping shipping,@ModelAttribute("book_counts") Map<Integer,Integer> bookCounts,@RequestParam("order_total") String orderTotal)
	{
		ModelAndView modelAndView = new ModelAndView("newcheckout","order_total", orderTotal);
		System.err.println("going to this page :(");
		modelAndView.addObject("shipping_address", shipping);
		modelAndView.addObject("order_total", orderTotal);
		modelAndView.addObject("book_counts", bookCounts);

	    return modelAndView;
	}
	
	
	@RequestMapping("/loginThroughCheckout")
	public ModelAndView loginThroughCheckout(@ModelAttribute("book_counts") Map<Integer,Integer> bookCounts,@RequestParam("order_total") double orderTotal)
	{
		
		ModelAndView modelAndView = new ModelAndView("login_through_checkout","order_total",orderTotal);
		
		modelAndView.addObject("order_total", orderTotal);
		modelAndView.addObject("book_counts", bookCounts);
	    return modelAndView;
	}
	
	
	
	
	
	
}
