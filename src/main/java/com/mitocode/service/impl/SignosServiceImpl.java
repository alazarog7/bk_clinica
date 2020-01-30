package com.mitocode.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.mitocode.model.Signos;
import com.mitocode.repo.ISignosRepo;
import com.mitocode.service.ISignosService;

@Service
public class SignosServiceImpl implements ISignosService{

	@Autowired
	private ISignosRepo repo;
	
	@Override
	public Signos registrar(Signos obj) {
		// TODO Auto-generated method stub
		return repo.save(obj);
	}

	@Override
	public Signos modificar(Signos obj) {
		// TODO Auto-generated method stub
		return repo.save(obj);
	}

	@Override
	public List<Signos> listar() {
		// TODO Auto-generated method stub
		return repo.findAll();
	}

	@Override
	public Signos leerPorId(Integer id) {
		// TODO Auto-generated method stub
		
		return repo.findById(id).orElse(new Signos());
	}

	@Override
	public boolean eliminar(Integer id) {
		// TODO Auto-generated method stub
		Signos signo = repo.findById(id).orElse(new Signos());
		if(signo.getIdSignos() != null) {
			repo.delete(signo);
			return true;
		}
		return false;
	}

	@Override
	public Page<Signos> listarPageable(Pageable pageable) {
		// TODO Auto-generated method stub
		return repo.findAll(pageable);
	}
	
	
	
}
