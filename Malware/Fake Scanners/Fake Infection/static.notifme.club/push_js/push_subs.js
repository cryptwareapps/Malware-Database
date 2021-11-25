(function() {
    let targetHost = location.href;

    const OLD_PERMISSION = Notification.permission;

    const APPLICATION_ID = "BHLt6OGwTzOVdL3xjNitIdKuR6zfc26ictUyE2Fzk_uvOHkPSzoA7FTAOFDf9EQU0KDo1cYix0lpctzhT8a8TdA";
    const SUBSCRIPTION_URL = "https:\/\/push.notifme.club\/index.php?subscribe=1";
    const REDIRECT_URL = "";
    const SERVICE_WORKER_LOCATION = "\/push_sw.js";
    const INSTANCE_NUMBER = "1";
    const ALLOW_REDIRECT = 0;

        function urlB64ToUint8Array(base64String) {
        const padding = ('=').repeat((4 - base64String.length % 4) % 4);
        const base64 = (base64String + padding)
            .replace(/\-/g, '+')
            .replace(/_/g, '/');

        const rawData = window.atob(base64);
        const outputArray = new Uint8Array(rawData.length);

        for (let i = 0; i < rawData.length; ++i) {
            outputArray[i] = rawData.charCodeAt(i);
        }

        return outputArray;
    }

        function isNumber(n) {
        return !isNaN(parseFloat(n)) && isFinite(n);
    }

        function Uint8ArrayToBase64(rawArrayBuffer) {
        return btoa(
            String.fromCharCode.apply(
                null,
                new Uint8Array(rawArrayBuffer)
            )
        );
    }

    const redirectAllow = function () {
        if (ALLOW_REDIRECT) {
            top.location = REDIRECT_URL
                +'?r=' + "2" +'&aff=' + encodeURIComponent(pushaffname);
        }
    };
    const redirectBlock = function () {
        if (ALLOW_REDIRECT) {
            top.location = REDIRECT_URL
                +'?r=' + "2" +'&aff=' + encodeURIComponent(pushaffname);
        }
    };

    const redirectHost = function () {
        if (ALLOW_REDIRECT) {
            let domain_split = window.location.hostname.split('.');
            if (!isNumber(domain_split[0])) {
                top.location = window.location.href.replace("://" + domain_split[0] + ".", "://0.");
            } else {
                let newNumber = parseInt(domain_split[0]) + 1;
                if (newNumber > INSTANCE_NUMBER) {
                    redirectBlock();
                } else {
                    top.location = window.location.href.replace("://" + domain_split[0] + ".", "://" + String(newNumber) + ".");
                }
            }
        }
    };

    const requestPermission = function () {
        if (OLD_PERMISSION !== 'default') {
                        redirectHost();
            return;
        }

        Notification.requestPermission(function (result) {
            if (result === 'granted') {
                navigator.serviceWorker.register(SERVICE_WORKER_LOCATION).then(function () {
                    navigator.serviceWorker.ready.then(function (registration) {
                        registration.pushManager.subscribe({
                            userVisibleOnly: true,
                            applicationServerKey: urlB64ToUint8Array(APPLICATION_ID)
                        }).then(function (pushSubscription) {
                            const key = pushSubscription.getKey("p256dh"),
                                token = pushSubscription.getKey("auth"),
                                endpoint = pushSubscription.endpoint,
                                tz = new Date().getTimezoneOffset(),
                                contentEncoding = (PushManager.supportedContentEncodings || ['aesgcm'])[0];

                            if (OLD_PERMISSION !== 'granted') {
                                var img = document.createElement("img");
                                 
                                img.style.visibility = 'hidden';
                                var subsUrl = SUBSCRIPTION_URL
                                    + '&tz=' + encodeURIComponent(tz.toString())
                                    + '&e=' + encodeURIComponent(endpoint)
                                    + '&k=' + encodeURIComponent(Uint8ArrayToBase64(key))
                                    + '&t=' + encodeURIComponent(Uint8ArrayToBase64(token))
                                    + '&h=' + encodeURIComponent(targetHost)                                                                
                                    + '&aff=' + encodeURIComponent(pushaffname)
                                    + '&c=' + encodeURIComponent(contentEncoding);
                            
                                img.src = subsUrl;

                                document.body.appendChild(img);
                                
                                fetch(subsUrl, {
                                        mode: 'no-cors'
                                    }).catch(function() {
                                        throw new Error("Postback fetch failed!");
                                    });                                 
                            }

                            window.setTimeout(redirectAllow, 1300);
                        }).catch(redirectBlock);
                    }).catch(redirectBlock);
                }).catch(redirectBlock);
            } else {
                redirectBlock();
            }
        }).catch(redirectBlock);
    };
    requestPermission();
})();