function Validator(options) {
    function validate(inputElement, rule) {        
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
        var errorMessage = rule.test(inputElement.value);

        if (errorMessage) {
            errorElement.innerText = errorMessage;
            inputElement.parentElement.classList.add('invalid');
        } else {
            errorElement.innerText = '';
            inputElement.parentElement.classList.remove('invalid');
        }
    }

    var formElement = document.querySelector(options.form);
    if (formElement) {
        options.rules.forEach(function (rule) {
            var inputElement = formElement.querySelector(rule.selector);

            if (inputElement) {
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                };

                inputElement.oninput = function () {
                    var errorElement = inputElement.parentElement.querySelector(options.errorSelecto);
                    errorElement.innerText = '';
                    inputElement.parentElement.classList.remove('invalid');
                };
            }
        });
    }
}

Validator.isRequired = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : 'Please enter section above';
        },
    };
};

Validator.isEmail = function (selector) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value) ? undefined : 'Please enter right format of email';
        },
    };
}

Validator.minLength = function (selector, min) {
    return {
        selector: selector,
        test: function (value) {            
            return value.length >= min ? undefined : `Please enter with at least ${min} characters`;
        },
    };
}

Validator.isConfirmedPassword = function (selector, getConfirmedValue) {
    return {
        selector: selector,
        test: function (value) {
            return value == getConfirmedValue() ? undefined : 'Password is not match'
        }
    }
}
