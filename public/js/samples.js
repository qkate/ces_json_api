(function(){

  // initialize sample data behavior
  function init () {
    $.getJSON('/api/samples.json', function(data) {
      console.log('hello sample data', data);
    });
  }

  $(init);

})();
