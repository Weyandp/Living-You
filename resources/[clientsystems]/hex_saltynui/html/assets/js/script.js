const app = new Vue({
    el: '.salty',
    data: {
        show: false
    },
    methods: {
        getColor(index) {
            return Config.COLORs[index] || "#fff"
        },
        getUrl(index) {
            return Config.URLs[index] || "https://google.com/"
        },
        getText(index) {
            return Config.TEXTs[index] || "Undefined"
        },
        toLink(index) {
            const url = this.getUrl(index)
            window.invokeNative('openUrl', url)
        },
        async fetchData(name, args = {}) {
            return await fetch(`https://${GetParentResourceName()}/${name}`, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8',
                },
                body: JSON.stringify(args)
            }).then(resp => resp.json())
        }
    },
    mounted() {
        this.fetchData('getState', {}).then((data) => {
            this.show = data.isMuted
        })

        window.addEventListener("message", (event) => {
            if (event.data.action == 'muted') {
                this.show = event.data.state
            }
        })
    }
})