package br.com.thiagoft.springframeworkmvctiles.entities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Generated;
import org.hibernate.annotations.GenerationTime;

@Entity
@Table(name="News")
/**
 * Bean that keep the news.
 * 
 * @author Thiago Fonseca
 */
public class News implements Serializable {
	
	private Long id;
	private String title;
	private String content;
	
	@Id
	@Generated(GenerationTime.INSERT)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", unique=true)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	@Column(name="title", length=300)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name="content", length=3000)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public News(Long id, String title, String content) {
		this.id = id;
		this.title = title;
		this.content = content;
	}
	
	public News(){}

}
