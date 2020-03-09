$(function() {

    Morris.Area({
        element: 'morris-area-chart',
        data: [{
            period: '2020-03',
            iphone: 2134

        }, {
            period: '2020-04',
            iphone: 2778

        }, {
            period: '2020-05',
            iphone: 1234
        }, {
            period: '2020-06',
            iphone: 1234
        }, {
            period: '2020-07',
            iphone: 6810
        }, {
            period: '2020-08',
            iphone: 5670

        }, {
            period: '2020-09',
            iphone: 4820
        }, {
            period: '2020-10',
            iphone: 1234
        }, {
            period: '2020-11',
            iphone: 10687
        }, {
            period: '2020-12',
            iphone: 8432
        }],
        xkey: 'period',
        ykeys: ['iphone'],
        labels: ['iPhone'],
        pointSize: 2,
        hideHover: 'auto',
        resize: true
    });

    Morris.Donut({
        element: 'morris-donut-chart',
        data: [{
            label: "Download Sales",
            value: 12
        }, {
            label: "In-Store Sales",
            value: 30
        }, {
            label: "Mail-Order Sales",
            value: 20
        }],
        resize: true
    });

    Morris.Bar({
        element: 'morris-bar-chart',
        data: [{
            y: '2006',
            a: 100,
            b: 90
        }, {
            y: '2007',
            a: 75,
            b: 65
        }, {
            y: '2008',
            a: 50,
            b: 40
        }, {
            y: '2009',
            a: 75,
            b: 65
        }, {
            y: '2010',
            a: 50,
            b: 40
        }, {
            y: '2011',
            a: 75,
            b: 65
        }, {
            y: '2012',
            a: 100,
            b: 90
        }],
        xkey: 'y',
        ykeys: ['a', 'b'],
        labels: ['Series A', 'Series B'],
        hideHover: 'auto',
        resize: true
    });

});
