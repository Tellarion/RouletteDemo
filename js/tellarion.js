$(document).ready(function() {

    function generate_items() {
        return new Promise(resolve => {
            $.ajax({
                url: "api.php",
                data: "get=items",
                method: "POST",
                dataType: "json",
                success: function(data) {
                    let generate_items = ``;
                    data.forEach(item => {
                        generate_items += `<div class="item" data-id="${item.id}" data-name="${item.name}" data-about="${item.about}"><img src="${item.img}" height="150px" width="150px" alt=""></div>`;
                    });
                    resolve(generate_items);
                }
            });
        });
    }

    function get_result() {
        return new Promise(resolve => {
            $.ajax({
                url: "api.php",
                data: "get=result",
                method: "POST",
                dataType: "json",
                success: function(data) {
                    resolve(data);
                }
            });
        });
    }

    generate_items().then(data => {

        $('.move').html(data);

        let posmLeft = 3150;
        let posmItem = 0; // start postion on spin
        let count_spin = 0;

        let delay = 5; // seconds for wheel
        let last_result;

        $('button').on('click', function() {
            $('.move').animate({ marginLeft: `-${posmLeft}px` },
                {
                    duration: delay * 1000,
                    start: function() {
                        count_spin++;
                        posmLeft += 3151;
                        get_result().then(data => {
                            if(count_spin == 1) {
                                posmItem += 23; // why 23? because i'm live in Krasnodar
                            } else {
                                posmItem += 21;
                            }
                            $(`.item:eq('${posmItem}')`).css('opacity', 0.5);
                            $(`.item:eq('${posmItem}') img`).attr('src', data.img);
                            last_result = data;
                        });
                    },
                    complete: function() {
                        alert(`Greetings traveler [${last_result.id}; ${last_result.name}; ${last_result.about};]`);
                    }
                }
            );
        });
    });
});