'use strict';

describe('Demo App', function() {

	describe('manage organization', function() {
		beforeEach(function() {
			browser().navigateTo('/demo/angular/');
		});

		it('should list colleges', function() {
			expect(element('.treeview li').count()).toBeGreaterThan(0);
		});

		it('should expand list of department when college +/- icon clicked', function(){
			element('.treeview label:first').click();
			expect(element('.treeview ul:first ul>li').count()).toBeGreaterThan(0);
		})

		it('should expand list of people when departmnt +/- icon clicked', function(){
			element('.treeview label:first').click();
			element('.treeview ul:first ul:first>li:first label').click();
			expect(element('.treeview ul:first ul:first>li:first ul>li').count()).toBeGreaterThan(0);
		})	

		it('should load panel for college', function(){
			element('.treeview a:first').click(); 
			expect(element('#edit-container h3').text()).toContain('College of Agricultural and Environmental Sciences');
		})	

		it('should load panel for department', function(){
			element('.treeview a:first').click(); 
			element('.treeview ul:first ul:first>li:first a').click();
			expect(element('#edit-container h3').text()).toContain('Agricultural and Resource Economics');
		})

		it('should load panel for person', function(){
			element('.treeview label:first').click();
			element('.treeview ul:first ul:first>li:first label').click();
			element('.treeview ul:first ul:first>li:first ul>li a').click();

			expect(element('#edit-container h3').text()).toContain('Noah Crain');
		})	

		it('should presist new department', function(){
			var newDepartment = 'New Department' + Date();

			element('.treeview a:first').click();
			element('a>i.icon-plus').click();
			input('new.department').enter(newDepartment);
			element('a>i.icon-ok').click();
			expect(element('tr td:first-child:contains("' + newDepartment + '")').count()).toEqual(2);
		})	

		it('should remove existing department', function(){
			var person = 'P';

			element('.treeview label:first').click();
			element('.treeview ul:first ul:first>li:first label').click();
			element('.treeview ul:first ul:first>li:first ul a:first').click();
			element('a>i.icon-plus').click();
			input('new.department').enter(newDepartment);
			element('a>i.icon-ok').click();

			expect(element('tr td:first-child:contains("' + newDepartment + '")').count()).toEqual(1);
			element('tr td:first-child:contains("' + newDepartment + '") + td .remove').click();
			expect(element('tr td:first-child:contains("' + newDepartment + '")').count()).toEqual(0);
		})

		itt('should presist person', function(){
			element('.treeview a:first').click();
			element('.treeview ul:first ul>li:first a').click();
			element('a>i.icon-plus').click();
			input('new.person').enter('amin');
			
			sleep(.5);
			element('.tt-suggestion:first').click();

			expect(element('tr td:first-child:contains("Amin, Louella")').count()).toEqual(1);
		})	

		it('should remove existing person', function(){
			element('.treeview a:first').click();
			element('.treeview ul:first ul>li:first a').click();
			
			//element('a>i.icon-ok').click();
			var name = 'Amin, Louella';
			expect(element('tr td:first-child:contains("' + name + '")').count()).toEqual(1);
			element('tr td:first-child:contains("' + name + '") + td .remove').click();
			expect(element('tr td:first-child:contains("' + name + '")').count()).toEqual(0);
		})			
	});


});