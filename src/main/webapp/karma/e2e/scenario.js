'use strict';

describe('Demo App', function() {

	describe('Main index view', function() {
		beforeEach(function() {
			browser().navigateTo('/');
		});

		it('should list videos', function() {
			pause();
			expect(element('.choose-role').text()).toBe('Demo Application');
		});
	});
});