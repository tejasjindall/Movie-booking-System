package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.MoviesRepo;
import com.example.demo.modal.City;
import com.example.demo.modal.Movies;

@Service
public class MovieService
{

	@Autowired
	MoviesRepo repo;
	
	
	
	public Movies addMovie(Movies movie) 
	{
		System.out.println(movie);
		return repo.save(movie);
	}


	public List<Movies> getMovieList() 
	{
		
		
		List<Movies> mymovies = repo.findAll(City.getStaticCity());
		// movies.forEach(System.out::println);'
		 
		return mymovies;
		 
	}
	
	

}
