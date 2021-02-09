package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.modal.Movies;
import com.example.demo.service.MovieService;


@RestController
@CrossOrigin(origins="http://localhost:4200")
public class MovieController
{
	@Autowired
	MovieService movieService;
	
	
	@PostMapping("/addmovie")
	Movies addMovie(@RequestBody Movies movie)
	{
		System.out.println("movie");
		System.out.println(movie);
		return movieService.addMovie(movie);
	}
	
	@GetMapping("/getmovielist")
	List<Movies> getMovieList()
	{
		return movieService.getMovieList();
	}
	
	

}
