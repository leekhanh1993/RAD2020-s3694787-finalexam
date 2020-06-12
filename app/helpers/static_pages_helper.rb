module StaticPagesHelper
    def time_status(tzone)
        # business time
        busitime_start = tzone.parse('09:00:00').strftime('%k:%M:%S')
        busitime_end = tzone.parse('17:59:00').strftime('%k:%M:%S')

        # business overtime
        busio_start = tzone.parse('18:00:00').strftime('%k:%M:%S')
        busio_end = tzone.parse('19:59:00').strftime('%k:%M:%S')

        # personal time AM
        peram_start = tzone.parse('08:00:00').strftime('%k:%M:%S')
        peram_end = tzone.parse('08:59:00').strftime('%k:%M:%S')

        # personal time PM
        perpm_start = tzone.parse('20:00:00').strftime('%k:%M:%S')
        perpm_end = tzone.parse('22:59:00').strftime('%k:%M:%S')

        # sleepng time PM
        sltpm_start = tzone.parse('23:00:00').strftime('%k:%M:%S')
        sltpm_end = tzone.parse('23:59:00').strftime('%k:%M:%S')

        # sleepng time AM
        sltam_start = tzone.parse('24:00:00').strftime('%k:%M:%S')
        sltam_end = tzone.parse('07:59:00').strftime('%k:%M:%S')

        if tzone.now.strftime('%k:%M:%S').between?(busitime_start, busitime_end)
            return '<div class="myicon bg-success list-inline-item"></div>'.html_safe
        end

        if tzone.now.strftime('%k:%M:%S').between?(busio_start, busio_end)
            return '<div class="myicon bg-warning list-inline-item"></div>'.html_safe
        end

        if tzone.now.strftime('%k:%M:%S').between?(peram_start, peram_end) || 
            tzone.now.strftime('%k:%M:%S').between?(perpm_start, perpm_end)
            return '<div class="myicon bg-danger list-inline-item"></div>'.html_safe
        end

        if tzone.now.strftime('%k:%M:%S').between?(sltam_start, sltam_end) || tzone.now.strftime('%k:%M:%S').between?(sltpm_start, sltpm_end)
            return '<svg class="bi bi-moon list-inline-item" width="1em" height="1em" viewBox="0 0 16 16"
            fill="currentColor" xmlns="http://www.w3.org/2000/svg">
            <path fill-rule="evenodd"
                d="M14.53 10.53a7 7 0 0 1-9.058-9.058A7.003 7.003 0 0 0 8 15a7.002 7.002 0 0 0 6.53-4.47z" />
        </svg>'.html_safe
        end

    end
end
