package com.example.fSpring.repos;

import com.example.fSpring.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepo extends CrudRepository<Message, Long> {

}
