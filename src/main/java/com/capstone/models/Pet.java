package com.capstone.models;

import com.fasterxml.jackson.annotation.JsonBackReference;
import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.List;
import java.util.Set;


@Entity
@Table(name = "pets")
public class Pet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, length = 45)
    @NotBlank(message = "Pet must have a name")
    @Size(min = 2, message = "Pet name must be at least 2 characters")
    private String name;

    @Column(nullable = false, length = 1000)
    @NotBlank(message = "Pet must have a story")
    @Size(min = 10, message = "Pet story must be at least 50 characters")
    private String story;

    @Column(length = 2)
    private int age;

    @Column(nullable = false)
    @NotBlank(message = "Pet must have a species")
    private String species;

    @Column(nullable = false)
    @NotNull(message = "Pet must be marked ready or not to adopt")
    private boolean readyToAdopt;

    @Column(length = 1000)
    private String privateNotes;

    @OneToOne
    @JoinColumn (name = "user_foster_id")
    private User foster;

    @OneToOne
    @JoinColumn (name = "user_adopter_id")
    private User adopter;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private List<PetImage> images;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pet")
    private List<MedicalRecord> records;

    @ManyToMany (cascade = CascadeType.ALL)
    @JoinTable (name = "filter_pets", // no model .... virtual table
            joinColumns = {@JoinColumn(name="pet_id")},
            inverseJoinColumns = {@JoinColumn(name="filter_id")}
    )
    private List<Filter> filtersPets;

    public Pet(String name, String story, int age, String privateNotes, boolean readyToAdopt) {
        this.name = name;
        this.story = story;
        this.age = age;
        this.readyToAdopt = readyToAdopt;
        this.privateNotes = privateNotes;
    }

    public  Pet (){}

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStory() {
        return story;
    }

    public void setStory(String story) {
        this.story = story;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getSpecies() {
        return species;
    }

    public void setSpecies(String species) {
        this.species = species;
    }

    public boolean getReadyToAdopt() {
        return readyToAdopt;
    }

    public void setReadyToAdopt(boolean readyToAdopt) {
        this.readyToAdopt = readyToAdopt;
    }

    public String getPrivateNotes() {
        return privateNotes;
    }

    public void setPrivateNotes(String privateNotes) {
        this.privateNotes = privateNotes;
    }

    public User getFoster() {
        return foster;
    }

    public void setFoster(User foster) {
        this.foster = foster;
    }

    public User getAdopter() {
        return adopter;
    }

    public void setAdopter(User adopter) {
        this.adopter = adopter;
    }

    public List<Filter> getFilters() {
        return filtersPets;
    }

    public void setFiltersPets(List<Filter> filtersPets) {
        this.filtersPets = filtersPets;
    }
}
