import React from "react"
import { useDispatch, useSelector } from "react-redux"
import { useState } from "react"
import { v4 } from "uuid"
import { useHistory } from "react-router"
import { Helmet } from "react-helmet"
import API from "../../env/api"

import NavBar from "../../containers/NavBar"
import { SmileOutlined } from "@ant-design/icons"
import { notification, Input } from "antd"

import {
  checkoutCart,
  formatMoney,
  priceByDiscount,
  priceByQuantity,
} from "../../containers/functions"

import "../../assets/scss/Payment.scss"
import { deleteAllItemInCart } from "../../redux/actions"

const Payment = () => {
  const { currentUser, cart } = useSelector((store) => store)
  const [phone, setPhone] = useState("")
  const [address, setAddress] = useState("")

  const dispatch = useDispatch()
  const history = useHistory()

  if (currentUser) {
    if (currentUser.role !== 4) {
      if (currentUser.role === 1) {
        history.push("/admin")
      } else if (currentUser.role === 2) {
        history.push("/salesman")
      } else if (currentUser.role === 3) {
        history.push("/shipper")
      }
    }
  }

  const twoDigits = (d) => {
    if (0 <= d && d < 10) return "0" + d.toString()
    if (-10 < d && d < 0) return "-0" + (-1 * d).toString()
    return d.toString()
  }

  // eslint-disable-next-line no-extend-native
  Date.prototype.toMysqlFormat = function () {
    return (
      this.getUTCFullYear() +
      "-" +
      twoDigits(1 + this.getUTCMonth()) +
      "-" +
      twoDigits(this.getUTCDate()) +
      " " +
      twoDigits(7 + this.getUTCHours()) +
      ":" +
      twoDigits(this.getUTCMinutes()) +
      ":" +
      twoDigits(this.getUTCSeconds())
    )
  }

  const handleOrder = (e) => {
    e.preventDefault()
    const id = v4()
    const formData = new FormData()

    formData.append("id_order", id)
    formData.append("id_customer", currentUser.id_account)
    formData.append("phone", phone)
    formData.append("address", address)
    formData.append("id_order_status", 1)
    formData.append("create_date", new Date().toMysqlFormat())

    API.post(`push_order.php`, formData).then((response) => {
      if (response.data === 1) {
        cart.forEach((element) => {
          const formData = new FormData()
          formData.append("id_order", id)
          formData.append("id_product", element.id)
          formData.append("quantity", element.quantity)

          API.post(`push_order_detail.php`, formData)
        })

        dispatch(deleteAllItemInCart())
        openNotification()
        history.push("/")
      } else {
        alert(response.data)
      }
    })
  }

  const openNotification = () => {
    notification.open({
      message: "Th??ng b??o",
      description: "?????t h??ng th??nh c??ng! Ti???p t???c mua h??ng n??o!",
      icon: <SmileOutlined style={{ color: "#108ee9" }} />,
    })
  }

  return (
    <div className="payment">
      <Helmet>
        <title>Thanh to??n</title>
      </Helmet>

      <NavBar />

      <div className="wrapper">
        <div className="wrapper__customerInfo">
          <h2>??i???n th??ng tin ?????t h??ng</h2>
          <label>
            H??? v?? t??n
            <Input type="text" value={currentUser ? currentUser.name : ""} />
          </label>

          <label>
            S??? ??i???n tho???i
            <Input
              type="number"
              value={phone}
              onChange={(e) => setPhone(e.target.value)}
            />
          </label>

          <label>
            ?????a ch??? nh???n h??ng
            <Input
              type="text"
              value={address}
              onChange={(e) => setAddress(e.target.value)}
            />
          </label>
        </div>

        <div className="wrapper__shoppingCart">
          <h2>????n h??ng</h2>
          {cart.map((item) => (
            <div className="wrapper__shoppingCart__item">
              <img src={item.src} alt="" />
              <div className="wrapper__shoppingCart__item--text">
                <span>{item.name}</span>
                <span>
                  {formatMoney(priceByDiscount(item.price, item.discount))} x{" "}
                  {item.quantity} ={" "}
                  {formatMoney(
                    priceByQuantity(
                      priceByDiscount(item.price, item.discount),
                      item.quantity
                    )
                  )}
                </span>
              </div>
            </div>
          ))}

          <div className="wrapper__shoppingCart__checkout">
            <div>
              <span>T???m t??nh</span>
              <span>Ph?? v???n chuy???n</span>
              <span>T???ng c???ng</span>
            </div>

            <div>
              <span>{formatMoney(checkoutCart(cart))}</span>
              <span>{formatMoney(0)}</span>
              <span>{formatMoney(checkoutCart(cart))}</span>
              <button onClick={handleOrder}>?????t h??ng</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Payment
