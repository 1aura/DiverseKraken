package com.elsevier.services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import com.elsevier.models.Address;
import com.elsevier.repositories.AddressRepository;

@Service
public class AddressService {

	@Autowired
	private AddressRepository addressRespository;
	
	
	
	public int updateBillingAddress(String addressLine1,
			String addressLine2,
			String city,
			String postcode,
			String state,
			String country,
			String phoneNumber,
			int customerId,
			String addressType
			){
		
		return addressRespository.updateBillingAddress(addressLine1, addressLine2, city, postcode, state, country, phoneNumber, customerId, addressType);
		
		
	}
	
	
	public Address findAddressByType(int customerId,String addressType){
		
		return addressRespository.findAddressByType(customerId, addressType);
	}
	
	public Address saveAddress(Address address)
	{
		
		return addressRespository.save(address);
	}

	
	
	
	
	
	
	
}
