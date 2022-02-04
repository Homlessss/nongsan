import React, { useEffect, useState } from "react"

import { Carousel } from "antd"
import { Helmet } from "react-helmet"

import RenderProduct from "../../containers/RenderProduct"
import NavBar from "../../containers/NavBar"

import "../../assets/scss/Home.scss"
import api from "../../env/api"

const Home = () => {
  const [products, setProducts] = useState([])
  const images = [
    "https://lh3.googleusercontent.com/yDVoIycloGdDNK-iaQEVMSPhgVDSOIj2ejVyabJ63teANk7JXL8_OV6lJRjopgbYUTdfSXE9exXGd8QjRGLtdU9zI2oKw1M9arj5fjkQLAhM3pWYMIUlWKIIdG0kHwEVqSn0fP3T_ZSZGOCvaMiYY5W6TJ5EZmyWHEbae3LnBIpGhv3pmzdZDiF9GcPHYbC14RzFutBLtl7LLLM4OZz1_R8jVreIBduIt3g3wEN-nARNytU7MtOKYeYcw9b8AKluuWIw-A8qwktW01Xty_bX0DB3NpHmYUzxVpLH-jikSJqX5jxC72cUunOwSu9R2jvjoYVx2UKAEFCqLTJrvNhaARiKo4XnoyBVVdlN-EA2JmLNXDqTz265C4kYB0WwchWLql_aTDGzGnFbPMKHm_C9qe2B-wjV7FvHpRWEP0477T3euyBOR604YLlwEqyh7Q9-ofku6qFTCJ2qObgBsBmT1ghmrk9O3kVNlJfLisSDgFfPPcyaB3O7qQ1LaVTFpjMeqEEzRNPHzlDZKdmXIU-0MdyKo3moClW_cF932zhDIKM_1420ouOKyFUksCHlpUX87KAtsNisXcpXqRd_P-m3jV-TQg5q9Y8P5b7MEDdW9jB0kzLqAugU3T26wNRRo47ZUhB-2zkgq2D9a0ipvifP_lw0eVlXqt0JZm4UVN4Z99W1-OP72JNX0gyUSAu8gBlNwB8fxy-8bGUyzh679-QCYj-X=w650-h365-no?authuser=0",
    "https://lh3.googleusercontent.com/9cpQK04IGdT8w8PbZ19hVVeGz_yG9_Bc2pvHSrfE4BCH9LmHKSn0HQ3BM3oCZVwYu5k15txcPiGwQ8MoWp6r9wa9XJ4ctYn8mCUZC0c3YCpdePKnPxbL8O3tNkzpgOSrJ1jDBZDza-KDCkwywFvMxxbLj2peFoSmb9VmSMr8An6ZqH5lDLNjzeQRV8InpESBDp8tFLf14-mQIlb6uzCL_mVc5p8tjwpRRsAvdkJhQTF1hzECWuaSdVOEvgsGSnKsEU9JB46C9gJD9Wa1Ls-97R8Zaavvi3Y0BXvgSrkypjnoGIpoZpEBoMTh0pUFSfDoyJ0l1kDdRok8rzVGDPjYBvw-lPMFtk9qawklYIMYyQJOEaTuQq2ugm1iQOo1JSM4U0ekzx-LtCLFMZQSxUR7tR7JyfRcuHwcWvW78FLcYx3K96XlKN6OT0Y9KT80ZLyH66miepo2KeDeHLcMXoTDhJh3doMSGlRhwDJ7mL-VszRckO_vJy6dPPFHSHU6jDvUluq29QKjZeJdfb6LutrS6_4aQ8C63IAYn98Nlf_qrcpPSwA4U-tK3INtANXJxDw4EVhbdo8oKMaer0LUMPg5hvKaX4Bjkc9_s5a29VfKzVv3by4Bh6fm2SP9MpZwP-LtnMogFfNBpo3x2vg0FLmDcoi7ccmXHN4Ynt221TXyxnZ4Pc5bCxDsQFl_-ix2JVdEchmUk2mKbim8znfRbP11z6qo=w550-h310-no?authuser=0",
    "https://lh3.googleusercontent.com/u2qJfbJGDQtY29jvi7w7p4r6Z5NNaKa5WfGkD--5naMjyZyakpRC7tan8-l998ssnwEs_01bWsc4vdBlt3hO3TTCpgpXzp25gIYmDD0pILL_ejBBWprqA2QRxsMnNSvh5BtbmrZqWkJX_ag5boHSqqU9KPe6dzvOXEahO52iGUSZ2C9zVEVhoYmyZuZKB16s_FFVIyZgqMR-KiwQXXoZTGtdOtW1OgmZS5SdnJglnqcAt6Ig3U65qNbINYNQKwH3wi13gGRcwVXwE0tlHsqzzmylozL7h0MAtoquo0r9Z-0rftbr-Ij1YghEPDgIR0DKe1A2CGOmr0AnD78QJ3xS5-xJ0y4R-Ee1WPwJbpEHbE3_J_Uzizi5NdMfwfqn6zeovi71GOZ3id5GFGTgMNXWzaS2S3js2594aV46SKPoGb1y4A1MV1VHLYrRq9uMfhpmoz-vVWwBalfhMi7XTBo6LCRnnz56ZqjGWNatqr-sjtu5bNlbPgiBPeBvB8hTbVnM7bnOOlzTJMb2Si1UCH7D67WtzUiQFLk5CgcboBW7yyBtIo-eq-j92U2U7SdKplkMaN2rOdtGLd_05G5uSXNYBhjaSbgREBkdylWdbwTeBi1pn5mtDeedxeZfr4_XRaelGLJN5rPpiFj3ie3qabxoz8kZze9v0YYsvQLANwWYFhtupXiDAhhryhcbzRzvjSmt5ZayTtZHrMWMdAkWGtSwaWI9=w406-h195-no?authuser=0",
    "https://lh3.googleusercontent.com/JOFIdSRooTUYZynyRLTuHn40giidhoVwGFHRCkOaslDsVbh-SAs0DNq8DiCb8bPbx234HA1CRq_aND0-fTUJQ2_p3WVKvr8FzbaKpvEsh0qX9GhQNYwSaUkO2ct-AQFBh2vEVyvu8IwPJ8-ux3jBSN7JZpW170FIWXdY2tjSc4pComUIk30-Ch2hcO9VM-Vvd3amW1P0VP1rRk0SC78KvmhOjP6JEuyNHVcF64ImQqVeDaqD3wpREmVbEuc7teRxsgT1yel6HBNBVmv5p4E4nCFO_rfm1kjeKdIabf7LfgV4SAg0JEG6kKd_gtbtrkdcDoMYmCzTJGiONO4H0xuyxQGH7Ecjj0J5TAA-yinJ1rr1a16keDZ0B8TQMd6_zD9wu846Gdc1c0OKtMHGAPOupJaAjs7sQlqyB9SeWkH_isF8Sfl3hAxxtrNINnwhYzq7VbB0Wnlybb3NImKHpVSX-Qy6vDcJLQqTn9qH4kNMc3j6xGjpdUVNbl0SQELowjNYh5R37Qpnw88g4rZR0iuANPPF704hGE97lC4SJ0DdfQqRx7Kez_MTXFVGgoXUREvAMyhNUnhxc12FmryqtRQe4c78LuMQlxyu4AUcqxSeMV7awvgcbEoZHJQO-cBrNMDuFbGH5TT4t7jZ0aK_rABY9wFQioiOWcaeiXhNJlMIGdXUWY_Vs1Er067-oaC2_k3MO5Y8ARcBejvp-2HeRWupDqJS=w391-h220-no?authuser=0",
  ]

  const fetchData = () => {
    api.get(`get_products.php`).then((response) => setProducts(response.data))
  }

  useEffect(() => {
    fetchData()
  }, [])

  return (
    <>
      <Helmet>
        <title>Nông sản sạch</title>
      </Helmet>

      <NavBar />

      <div className="home">
        <div className="carousel__advertisement">
          <div className="carousel">
            <Carousel autoplay>
              {images.map((img) => (
                <div>
                  <img src={img} alt="" />
                </div>
              ))}
            </Carousel>
          </div>

          <div className="advertisement">
            <img
              src="https://lh3.googleusercontent.com/Wpa-vBpITTf0kCV2Jbh8kSQQrzjYBTdNU9M-TGEVxNr_s12tf5w5ZcJiJIku-6FPPFFTWMpDz8N10Hb3cJSEYQGZT8wVg4V_iyPrev3pQi3ZRK1TK5OJ-IBi-Hi0kDQWTHFa0lE9Qi-Zmc454cJvclc6T3PI4UEzisqcuxJ4vvCuEZZ4mXg-gHIVbkWPbQaXU7BZRhewGN9N2vlOIGi9wUDT9JOVgh3c1cJZvV_kXo6GFIdfh0tUjSiQ0TRhbGPrShFusYJcsVV7kqxew2GHqCzt_5aHbe4oaa_qNtyeG8K4vG3tS-Je-_XmqF30MCoZE-AtU2oWadpMmaxce90VKje6Fh9UzVRHOSB2duJijGVu_oXoxUalvx5hBZKRXEAQMEybnXlYnTfBCK4zccUpE6vmVQX02ALBOgV6XJB__UH8x0wN0GqPTH9-fsGNvLyUeku14HQvdg-abYmxljZ-DFGLE6Llmgqg9aRScIeJ-wpbX9GPAl3zKyqfb70MWTwPEpo0tDBLcg3TIc3Mu9ralzuOawTQR2oQcjlJD4jJ-vs-tYCW_QkzQAG0AsnvkSiCunwJiZsSLrxTNvZU88KfMobdqcX0Gyi3IPlJ0QY-GU3gSoklWEbRVZm7Ka1PRAc-irHkXhyaLqSGiB77mA0f73-B9pBTk-VZDowNjGt_9y3SsDuybpupqzi0Lz7wjWw7CBm5wYrXw-BE6yKFjHueU_DG=w292-h195-no?authuser=0"
              alt=""
            />
          </div>
        </div>

        <RenderProduct products={products} />
      </div>
    </>
  )
}

export default Home
