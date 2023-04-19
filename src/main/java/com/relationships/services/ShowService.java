// package com.relationships.services;

// import java.util.List;
// import java.util.Optional;

// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Service;

// import com.relationships.models.Employee;
// import com.relationships.repositores.ShowRepository;

// @Service
// public class ShowService {

//     @Autowired
//     private ShowRepository showRepo;

//     public Employee create(Employee tv) {
//         return showRepo.save(tv);
//     }

//     public List<Employee> allShows() {
//         return showRepo.findAll();
//     }

//     public Employee findById(Long id) {
//         Optional<Employee> optBook = showRepo.findById(id);
//         if (optBook.isPresent()) {
//             return optBook.get();
//         }
//         return null;
//     }

//     public Boolean findAllByTitle(String title) {
//         List<Employee> optShow = showRepo.findAllByTitle(title);
//         if (optShow.size() > 0) {
//             return true;
//         }
//         return false;
//     }

//     public void deleteById(Long id) {
//         showRepo.deleteById(id);
//     }

//     public Employee update(Employee tv) {
//         return showRepo.save(tv);
//     }
// }
