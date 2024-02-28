$(function () {
    const closeAll = () => {
        $(".main__hex-container").fadeOut()
        $.post(`https://${GetParentResourceName()}/exit`, JSON.stringify({}))
    }

    const addHistory = (id, type, money) => {
        let typeTitle = ''

        switch (type) {
            case 'deposit':
                typeTitle = 'Einzahlung'
                break
            case 'withdraw':
                typeTitle = 'Auszahlung'
                break
            case 'transfer':
                typeTitle = 'Überweisung gesendet'
                break
            case 'transfergot':
                typeTitle = 'Überweisung bekommen'
                break
        }

        $(".main__hex-banking-top-grid-left-scroll-container").prepend(`
            <div class="main__hex-banking-top-grid-left-scroll-item">
                <div class="main__hex-banking-top-grid-left-scroll-item-left-container ${type}">
                    <p>${typeTitle}</p>
                </div>
                <div class="main__hex-banking-top-grid-left-scroll-item-middle-container">
                    <p>ID: ${id}</p>
                </div>
                <div class="main__hex-banking-top-grid-left-scroll-item-right-container">
                    <p>${new Intl.NumberFormat('de-DE').format(money)}$</p>
                </div>
                <div class="main__hex-banking-top-grid-left-scroll-item-square"></div>
            </div>
        `)
    }

    window.addEventListener('message', function (event) {
        switch (event.data.action) {
            case 'show': {
                $(".main__hex-banking-top-grid-left-scroll-container").empty()
                $(".main__hex-banking-top-grid-left-deposit-container").hide()
                $(".main__hex-banking-top-grid-right-btn-item").removeClass('active')
                $(".main__hex-banking-top-grid-left-scroll-container").show()

                if (event.data.avatar) {
                    $("#playerImg").attr('src', event.data.avatar)
                }

                for (let i = 1; i <= event.data.history.length; i++) {
                    const historyItem = event.data.history[i - 1]
                    addHistory(i, historyItem.type, historyItem.amount)
                }

                $("#todayDeposit").text(`${new Intl.NumberFormat('de-DE').format(event.data.stats.money)}$`)
                $("#todayWithdraw").text(`${new Intl.NumberFormat('de-DE').format(event.data.stats.bank)}$`)
                $("#todayTransfer").text(`${new Intl.NumberFormat('de-DE').format(event.data.stats.transfer)}$`)

                $(".main__hex-container").fadeIn()
            }
                break
            case 'updateData': {
                $("#playerMoney").text(`${new Intl.NumberFormat('de-DE').format(event.data.money)}$`)

                if (event.data.name != undefined) {
                    $("#playerName").text(event.data.name)
                    $("#cardHolder").text(event.data.name)
                }
            }
                break
            case 'addHistory':
                addHistory(event.data.id, event.data.type, event.data.amount)
                break
            case 'updateStats':
                $("#todayDeposit").text(`${new Intl.NumberFormat('de-DE').format(event.data.stats.money)}$`)
                $("#todayWithdraw").text(`${new Intl.NumberFormat('de-DE').format(event.data.stats.bank)}$`)
                $("#todayTransfer").text(`${new Intl.NumberFormat('de-DE').format(event.data.stats.transfer)}$`)
                break
        }
    })

    window.addEventListener('keyup', function (event) {
        switch (event.key) {
            case 'Escape':
                closeAll()
                break
        }
    })

    $("#closeButton").click(function () {
        closeAll()
    })

    $(document).on("click", ".main__hex-banking-top-grid-right-btn-item", function () {
        const type = $(this).attr('data-type')
        const currentClass = $(this).attr('class')

        if (currentClass.includes('active')) {
            $(".main__hex-banking-top-grid-left-deposit-container").hide()
            $(".main__hex-banking-top-grid-right-btn-item").removeClass('active')
            $(".main__hex-banking-top-grid-left-scroll-container").fadeIn()
        } else {
            $(".main__hex-banking-top-grid-right-btn-item").removeClass('active')
            $(this).addClass('active')

            $(".main__hex-banking-top-grid-left-deposit-container").hide()
            $(".main__hex-banking-top-grid-left-scroll-container").hide()

            switch (type) {
                case 'deposit':
                    $("#depositPage").fadeIn()
                    break
                case 'withdraw':
                    $("#withdrawPage").fadeIn()
                    break
                case 'transfer':
                    $("#transferPage").fadeIn()
                    break
            }
        }
    })

    $(".main__hex-banking-top-grid-left-btn-done").click(function () {
        const type = $(this).attr('data-type')

        $.post(`https://${GetParentResourceName()}/action`, JSON.stringify({
            type: type,
            amount: parseInt($(`#${type}Input`).val()),
            id: parseInt($("#targetId").val())
        }))
    })

    $(".main__hex-banking-top-grid-left-btn-cancel").click(function () {
        $(".main__hex-banking-top-grid-left-deposit-container").hide()
        $(".main__hex-banking-top-grid-right-btn-item").removeClass('active')
        $(".main__hex-banking-top-grid-left-scroll-container").fadeIn()
    })
})