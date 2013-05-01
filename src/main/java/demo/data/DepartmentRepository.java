package demo.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import demo.domain.College;
import demo.domain.Department;


public interface DepartmentRepository extends JpaRepository<Department, Integer> {
	
	@Query("select d from Department d where d.parentOrganization = ?1 order by d.name")
	List<Department> findByCollege(College college);

}
