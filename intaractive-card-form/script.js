input.onblur = function() {
    if (!input.value.includes('@')) { // не email
      input.classList.add('invalid');
      error.innerHTML = 'Пожалуйста, введите правильный email.'
    }
  };
  
  input.onfocus = function() {
    if (this.classList.contains('invalid')) {
      // удаляем индикатор ошибки, т.к. пользователь хочет ввести данные заново
      this.classList.remove('invalid');
      error.innerHTML = "";
    }
  };