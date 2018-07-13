window.lcUtility = (function() {
    return {
        // docs: https://developer.salesforce.com/docs/component-library/bundle/force:showToast/documentation
        showToast: function(message, type, title, mode) {
            var toastEvent = $A.get("e.force:showToast");
            toastEvent.setParams({
                title,
                message,
                type,
                mode
            });
            toastEvent.fire();
        },
        showToastError: function(errors) {
            console.log(errors);
            if (errors) {
                errors.length == 1 ? this.showToast(errors[0].message, 'error', 'Error', 'sticky') : this.showToast(errors, 'error', 'Error', 'sticky');
            } else {
                this.showToast('Unknown error, contact support', 'error', 'Error', 'dismissible');
            }
        },
        lowerFirstLetter: function(string) {
            return string.charAt(0).toLowerCase() + string.slice(1);
        }
    };
}());