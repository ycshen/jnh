package org.guess.core.orm;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class IntIdEntity {

//	@Id
//	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "oracle_id")
//	@SequenceGenerator(name = "oracle_id", sequenceName = "oracle_id", allocationSize = 1)
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	protected int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
