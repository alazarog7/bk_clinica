package com.mitocode.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mitocode.model.Signos;
import com.mitocode.service.ISignosService;

@RestController
@RequestMapping("signos")
public class SignosController {

	 Logger logger = LoggerFactory.getLogger(SignosController.class);
	@Autowired
	private ISignosService signosService;
	
	@GetMapping
	private ResponseEntity<Page<Signos>> listar(Pageable pageable){
		Page<Signos> signos = signosService.listarPageable(pageable);
		return ResponseEntity.status(HttpStatus.OK).body(signos);
	}
	
	@GetMapping("/{id}")
	private ResponseEntity<Signos> listarPorId(@PathVariable("id") Integer id){
		Signos signo = signosService.leerPorId(id);
		return ResponseEntity.status(HttpStatus.OK).body(signo);
	}
	
	@PostMapping
	private ResponseEntity<Signos> registrar(@RequestBody Signos signo){
		return ResponseEntity.status(HttpStatus.CREATED).body(signosService.registrar(signo));
	}
	
	@PutMapping
	private ResponseEntity<Signos> actualizar(@RequestBody Signos signo){
		return ResponseEntity.status(HttpStatus.OK).body(signosService.modificar(signo));
	}
	
	@DeleteMapping("/{id}")
	private ResponseEntity<Object> eliminar(@PathVariable("id") Integer id){
		Signos signo = signosService.leerPorId(id);
		if(signo.getIdSignos()!= null ) signosService.eliminar(id);
		return ResponseEntity.status(HttpStatus.OK).build();
	}
	
	
}
