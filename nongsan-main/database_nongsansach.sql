create database store;

CREATE TABLE `order_detail` (
  `id_order` varchar(50) NOT NULL,
  `id_product` varchar(50) NOT NULL,
  `quantity` int(11) DEFAULT NULL
);

INSERT INTO `order_detail` (`id_order`, `id_product`, `quantity`) VALUES
('order1', 'p8', 3),
('order2', 'p2', 4),
('order2', 'p5', 5),
('order3', 'p6', 5),
('order4', 'p6', 3),
('order4', 'p5', 3),
('order5', 'p4', 1),
('order6', 'p1', 1),
('order7', 'p1', 1),
('order7', 'p2', 2),
('order8', 'p7', 2),
('order8', 'p5', 3),
('order9', 'p7', 4),
('order10', 'p9', 4),
('order1', 'p7', 2),
('dc786d88-3f20-4b57-9f08-a461fd42079b', 'p1', 3),
('dc786d88-3f20-4b57-9f08-a461fd42079b', 'p11', 1),
('bfbfa8b8-67e8-4e2b-b1ac-6995b93f6c50', 'p8', 1),
('bfbfa8b8-67e8-4e2b-b1ac-6995b93f6c50', 'p1', 1),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p11', 3),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p1', 1),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p3', 2),
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'p9', 4),
('814db289-09f0-451f-979b-6d9807357204', 'p11', 3),
('99135345-cd9f-406f-acd0-4d262eb8143b', 'p1', 1),
('38a6b1ea-a90f-4ccf-9f8e-1d1bea5fd40a', 'p10', 1),
('fdf91b67-bcdf-47cd-865f-6f75c8407115', 'p9', 2),
('f927e42f-89ee-4062-869a-3b1d554a1d2b', 'p3', 1),
('36f10312-95a0-41f9-aa68-8cf9d1f6f131', 'p9', 3),
('3ddbc157-ded1-40d4-8055-9407f8f588ea', 'p117', 1),
('b683389f-5694-42d2-88f7-4c07f9737984', 'p117', 1),
('71ad33f4-f570-4818-9f44-27900542b383', '33068280', 1),
('71ad33f4-f570-4818-9f44-27900542b383', 'p111', 1),
('71ad33f4-f570-4818-9f44-27900542b383', 'p116', 1),
('71ad33f4-f570-4818-9f44-27900542b383', 'p112', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p1', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p6', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p5', 1),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', 'p8', 1),
('243acebb-14af-474e-9990-672a0b46c461', 'p113', 2);

CREATE TABLE `payment` (
  `id_order` varchar(50) NOT NULL,
  `total_money` int(11) DEFAULT NULL
);

CREATE TABLE `product` (
  `id` varchar(50) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `remains` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `src` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `origin` varchar(256) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1
);

INSERT INTO `product` (`id`, `type`, `name`, `remains`, `price`, `discount`, `src`, `description`, `origin`, `quantity`) VALUES
('33068280', 'rice', 'Gạo Nam Định', 321123, 70000, 40, 'https://lh3.googleusercontent.com/Z_oR1fMmaC0PQsnBra8WXfJW0eSxBtekqLYphmaGNn8Va7vHwj0EDt2Mw3-0fR1ytGXQSZjh3gCstMDonqGMY5Zfe7r8O5JHuIsaaaf4NTLspvVud22bNzS-HWbucUofTYOyXi_tjwgzQxTDYxUFzaPE6IrOUAvlJwC0lxXvLCBLJiyYnQ6OLI4qYv1PZe5IbFW_XshrQ9Oyh_WHErmxltaVJYrkLtfKxRVpPxCG4uOsqEU336TZXCK5sXKOxoLR0viRLIsEZm-RVhXwaBZ4FlotO6yNLwuDl7GEQctymvRm2uflGxovvnJTI3UmyG3S1pmK9VThYejqAHlT9Db0ar0r7Z5aBnseSGVbV8E7ngJIuTvjlPeZQelnwH1sOeeHiF6fwg2c5Ipdy30xweGoQsJDP_wlbtLT0TfDpA7kpEN7BNPaZOiml8tgR8GuoF2W3K3T9pZx7Y0ckJWpGX1JGEmnSRq6uSgnsFCR-lTDTRyuv5AA17K3oBwjJxih1iNMtqKsjvcTHySyTr6MANoVqK7ndvCGGEWo-kqYTjkWNHH1JMhCaKcbI3mhySWWN-Kjw5PzOanpVuiTHvxhcBpu57J9c9JbeqDFmnokSNHJeSXktj0qrdoWT1Wj_MINW5Q4xLYQxfhQN9YcrHVcZGoUT6vpyi2j7psxGS36U8oUQDLJtubYlkDXXZkX2nW-YGJHzu5E-SnBWyqWqdxqHB1b5dhK=s185-no?authuser=0', NULL, NULL, 1),
('p1', 'fruit', 'Táo Lào Cai Việt Nam', 100, 12000, 5, 'https://lh3.googleusercontent.com/JhtNXVLlcjNZtqniEjIThz7qhXcZY7GU3AEU5opWHp9ywvsmBW9ouFsQiBKR3ZfxJIXdHdI_2t-IkWOb-_oGVfkzw-1CYFQ0k9DgaW9kU45ID1bGhp4rTmPAaQH8162tbwV0Ee1McF1Sd7uHPceF8zZ_WD9f2iouygpB7_TUKsYcqnfKM0Tr2yfhlreSvJYWpW5dhAImw36mWZijFxZA3E7CT1H5Ax7dvuM5wVCK9K9J4m3K6xH2wa7BD6ij6nq4aYShdcJaDvkygJCDt7VFnp60lUdRynblni_xuD0lmjvGbkUkA50im1I5dG9hadpiGAgY3rd5gGnKL-1duIkslI1jFnrSVSolQt13iPLJGH8N5xSAyyCoDmiJPFhAVFKDiNpNJcp-mfWEgS_6ngK2KDSMWS2gpF9ZdVKgv48sYLUqdwuwqoSUe5Ob3HX0fx93FL1THCyLMH40iwTBeke8YLnn0vDMe7tB46q45KjkPyWrbu3PQ-ZzVY9qmtNSUPga6AfwVSrrD0DfoxsrXEzF1c7Aa7mzI5bcFlV-7G0dpGanUsUmniXCRQYathrfZwE7NjJUPHR8vNfxW24T6wkD8t3kQ5HbHLESDGIQH3N5M_FUQSxeU6HxYznkI7gmx8PgdMBw7QTBOCdC5DnLzpJpKV2FdF1qial7KksJg7_yQ1VLs5avfKX6JFtMOjB5Cuz5oGX5Lt00QRlyTihliqttDamJ=s185-no?authuser=0', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Lào Cai - Việt Nam', 1),
('p10', 'fruit', 'Cam vàng Úc', 100, 239000, 0, 'https://lh3.googleusercontent.com/Ylb-czflog5yddk6cI3nAwNcnpRDnjkJ7dQePyZhwIjoq_K0YB2_K3Mp8dK1dlK8cGgPAko5RiOSO4IhhnaowRwhHhFwf-37zaCFbB635W9NhgRntHqb3i9c0egtjETb37sY_onpO4TG3-gzAl85YaHRNpHoiEOSBzd9NtUsx-FTtPM5WiYMcO-W5uDRyJ6Tc81ObU_7QZexQ2dbwzSJd4cncdEgTXFNsGeC__x-x77Aoi2KGGeP10Qx0Gt4ITBjsjWCDWSm-LC0L6skwMEsX2erVw4snnLncNVLwd-2lx_kL-kY779zQ55muFt_DVIQ6Q7NNrTe44ezuLZbrTLMXzVFy2y3_V0w7g1X9BukzU6t4N_Pd_wt85Fqb1i_sy63Jh1rqkcGZ7iPElACp6WmjRwTrzp2rIgMdjkxxmXwuaOwr1SF34THQvC-mdT-tTGoUW4BuVoyIfAN61t7VA7ELAGOQ00dWP31AnjzDYJ0iXDoNzTJBTUOUyin69kniyO9P6cFs08DSCdkhy9mjHFy-hayXfocT4uhY8dXOUU8oQP2X0oQtKQKPt4kizDSEgtxk1_njvYsft2FVNJG4DTuGt1kyRcJiB1f99toAfqN3VwQdmHoZ7G29HaW3zlJAfnfzhwyDdzQE9m7r59DjYq8blC3R5H2tjYnTXAlTzV7S_xh4ZKmuxTs2WLJ6e9sd6LkyYnD4-4n7A8g-6rvYoLK62QH=w185-h139-no?authuser=0', 'Đây là sản phẩm sạch, được trồng tại hải dương', 'Hải Dương - Việt Nam', 1),
('p11', 'fruit', 'Dưa chuột', 200, 9000, 0, 'https://lh3.googleusercontent.com/cIqdRYmt31-W5BpEM370HYGoIbPxy0tfcGliEWf1a11Qz-8uvbJX_OQuddcjslt5FyVnyZ7kAOBLavdObzAh3V_Z0m4hXiXgAnnTfHBBFNyFwWRc_E66uOcvD5Z7ltHj8uTW7ELxFsZaAfOfes8esnhv5DTF_gvA1Xh7oIYYUSbstg0T5xk4roVShaGEOagK4divktqPuIB23mZb-prQgmlwjty7bwhmYTIKmvLmQRG21LB3arrpLhu2UInZG-LOlcKPNMq6b29oHVILw-3-pCrheCMAUj5ZwmHjwe2QIFbbn397cjmiTDXrMpk1Jce_wgbA1yuYIJ8kzTmJ45tXqfXWaUx76uBFISrDSIlqq9LZBEhS9ahRsGRMgMZXKq8Ax7anI5vIqwAJ4KkZrww6VJrZIUTRONFHqLazb6CiLl_BDNPws4hACvwajkZbjWNmS6l_8-uFRUdQQ2pKC9O5gcL-nSFzLJr3663P_tcCi4N879VABBgIeFRyIdiRfZ4NnotqQx_vTQLKhZW5K2rk7sdNqudLb5y-EA5PEPLemhGuXoHiZoMVev9mFhA6xJOx2kIPhZFJj3YR5jEepvuJLUJJqdclye_Z9rzGZCdp4G41R975MYOoEE8fIYwv9s0jTNDeBdSmDJGjWb3Nlv1mBLs5AWRWRAVjtdOVaYUfzaXrnzCeQTkPG2LOoNQ1bAI2LXh6xWkLEsdqcHxR4HqrcxBu=s185-no?authuser=0', 'Sản phẩm tốt', 'Việt Nam', 1),
('p111', 'fruit', 'Cam sành', 3224, 34567, 4, 'https://lh3.googleusercontent.com/kcFoHQaKcESOP3SvvCNTIA71D88kaoZFjhllBBLcgZELaHJmtpocsxp48ABKBrF-qTyZOQDxy6Qk3A26NrBBcpceTqM_9uLUjiev6WC2DUNExCsxPl4piYv1ludNAOH3CgcRNZD9Pk8cWivrzIrVgl4PBDUTMXr2a-qOtS4pu_19QaKiZQkrlK_zKFu88-qORz7RYNRf1EFlVAajn1W133bfMcw9_Axvo2O03quyph-3d26GGRkWxZjbtKb_sIu9hPbcYTZE5uXwAh6l1xnFy1t8BWvdyjXYu5QDMMsLWEvLquz0sw_HMSs7xoJ7NzveeBlm1fA5vpj2VS_UwP25rR-555fnE2jWKtdLc7wbFlLWiRsPyfbCNPIEZOUe44RCk5gK9jGscsF88R4aJYE8YCFMV2KA2ANZDhe1R5FngUyTeclOE07VLOviWFoKg09NyDvcHwpnp9Mep2ZTpniYoRHD8bixQBibtWyl5lkLkl2XzIfYJOQceDT7s00sLfrWhEBEoppbhNc55UhCXPoeXVcXAs-hwaw5lwzuFgr3QVppy3bNl0RIcCIDW0xiyY3K6IftyCs9yr1SYTPSydBKk_aq8UlZIUYAns3dFC-Q6UVgeI4KL2GW1ZPMYYG4ELzGwkP6xB1VjX_DJaJkYG8eiMB1aEuVBw4vQhonwhxIkxjrxroqovIaqyKnbyWTvRKSTvAYj2XAHkjEaV8bNfB1oQI2=s185-no?authuser=0', NULL, NULL, 1),
('p112', 'vegetable', 'Cần tây', 3324, 11234, 5, 'https://lh3.googleusercontent.com/7XJgKKW8VDCvwmWk6FbFYSQJVCwMvbwV4VTjNFPPq0P3wNiP1O9byA5aLwtBYVML-umM0UT3-D3b1PPRGXteY7j5vP5BTDHL8eXW8lKpTuJhFHow4Sm_JMSqrt3RujQy3psW2U4AuT3fCcJSavUHromNvlFEap1UmLEkBNOUpwl-GfFNpLiXxcWarNF57V6UmqULF58EaylRXm0f23csLOJHiJfi1ThDkb4trXN6cIOXD8PAz5O84wCnmA0apq28pW8iOsdyY5-yD6RiSjyvPJMoQOYz03HJwaETZI7_pHV-mEZo09qjp97a9N3pvpGCzQeL9M9wyCIaYwyBvmLP2TOoG7cR-5AZzPrrWqKB25Giou6WhashQd_z8yKKW2IjkeHxSVpuhUSv37qk08z-Vy2mBryWevlVnd3_4wt7ScPK0x1sMCmwh_3-z9M14p5NIuxfQDsmZ6IvhQzyo_wzUglkyrv8W776SlsgGkXriUUrCXf00dSUTqXr4xSduYV_qJptfDJKeUozzFXASC8SEXguKwx5HJ0CscJXoDuZLxfD_I34Au7mWsgeoGvx0Fo1RN76ks892hqrUoMwKWJ2qIM5HrTj1hBApXdmS6n9pwBhUri3OOyNqbvLvmyzjxb0gG4WVS3BRc2r5wqjW6W7tEhtx26uBhC_2k81CtrSzKKcm5jKxBnh8G5zH3s-piJZdrSsSp3-vwHVaewgdpVu0j3u=w185-h123-no?authuser=0', NULL, NULL, 1),
('p113', 'fruit', 'Dừa Bến Tre', 23432, 39000, 0, 'https://lh3.googleusercontent.com/znF1GllhDHR9_9oUE0FOajAY-fDxMvxuuE2RysCn-r0AjCX5f2pkKDL573AV0YSvjVmAlYnWz0HgSpe844j7TFpZNf_0q1WlNdLclnLsC9H7bxU_Fgp4qCdNAnKzj24xS83xURM5FUSeSSyx0V4dgC-NyIKQD-GUoaam9EzcPk-gr0niG3OOIl7npPOEorLCcVHmh5qwCYdjOB7LjtV3GUxkWunL5QYbAVYKAeRj-nLSBwVZK0w9_pu8nuH1ymnYvVCwTfN0n1ir-jBcyzGFZFhZLMJnU_Pr6HBXFniYlwDlY7zcWwbr2Ud61HQU1nun_l6LkLVM1mg0JSyhfozMtqTNnIiRImCJ-yD7kd7C0h_Sm7DNF9aESy2CblgOJxpFmJsoeluAj4-yBA_pZE6UlNA0M3_GKDQSOmcG-1432edhFPp2z75US90JBVEmlFGBeUxWOjMxKA04BHKhmiMUuEwTQPIG2Zwxe0SmVV1Tw39snEWlwHxGDKJRelA3uBGosDPdMHAkBh98LXicDl6SsLeJqaV0IbTGX_hRtzmuaqsu86ga96_f8SE8ORMLhSbWsTvZfM_8e-eEaV7m0zPXp0dOBP3LmpMF4v7v4b1PPB4f1XTQQP6k2HWcBB6wor624_uEe6M9DaWv0Y7raAzZ-8lFYYuASVQVDdoknYNyqJ4uUosWQ_tR2oYH4mF2cLfVT4f6FwagoF0kkCqaVjyM8jei=s185-no?authuser=0', NULL, NULL, 1),
('p115', 'fruit', 'Ổi Thanh Hà', 3213, 12000, 0, 'https://lh3.googleusercontent.com/-c7ZIrStjnOfFluwU654lb6g9FPQ_rijb2tyXEnIsTJfo5OyDvPyqFLZqphQC1mA1IldwAlsEYaElFksI1KUyh0hCYqu0SRHGU_cpZ1cK5E4OC33mnzrrvsrWTr6bC6YBSoP7JqIfYcGPWkob7RAkz0wac2hT8bPumq0EPqBu4zh94BGgzFY6cwdfMY0IMft6MTv8tiTGbHFkyyh2IRi8vL_PH5zF3yFJKYbXx6vU1d7JcLHQA0f1SsLZVz73Asl1upTf_aLQZE103Uy78iT0BKXm10YkvrjofUfX0uAURsAoITBLkcvvZGK2Fd97RIxp98dbGXziA-VDVBRSl2SDdTNBQcQcxhvwa-hpwDcumHtXUP1VWGd2pMxCXDE11d3gh6LDke3CZRxt-Klvy6kff3oaY6gCqtteVbKV5faFt6yeoMUlyzaMzPfM1psPd_iIvd7aLbTm_kjhJL2ta2FhTvL0yPlEOAG6uRCh6ytgcFH54BR5KLTKinDg7iYUrFG1NmPllLBNkZR2dg8uubs--i5qEmyoweRMIA_K7NzdsIDiUh6gpIfpVfNRCPZQLa3UXvfSOQIAq0kjPGUaKnxiFwR42BfuPCxDp6hz9FrMplOy42YSgNKrO62mtYZWmpc-qTwc7V_ePhotesrBKD98a6o2INOtqQUMFBF7OX13kVvh3cCQ6rdgavSurfOVmdU17pxVgqKUXQCkP-813YqOI0R=s185-no?authuser=0', NULL, NULL, 1),
('p116', 'vegetable', 'Rau mầm xanh', 12313, 9000, 40, 'https://lh3.googleusercontent.com/hkSJydtwW9adr4ycnIaATYEOaUgQA8WIaA13Ixb_kJhKsKCFeZqT4OGVn6KQws4Co1GvJf6uEx0a5N3CPa7F4As4grivqhe3AKH79dbC2Xhh86tGwzkA2ENqfYmEq_PcjI_ROLqF3ZzZtE7BXsE1BTArmQkymhzpfd7U2zM0p9Fllty5LovSjRCQdEJKkbDJCaJ3mErEb6Gxe-YoO9XCDKlv69BD-V2zAna2Cz4lpRbjiYkdAUBduzhbXdJ6RZxT4yTt4YXMvofEnzdJLGLvezuLX6KSPsEro1OJa3898deMSNYtJFldF_ikyTu2Xggi_I8MZe6kS0jX9Vd26UjBiArM_sk9nKSbN9GZ5Qa5TLDJFtKaoT2ZKbMv46XAqtJWnCWkOCaqR2UFIAk2tUEXvQmfVjAFsefcUWZDia_P792IiU41uyJdxzmueBqYbSQ4VMO1NYjw8mhob0rOeeGSVsg4daCO9PcWx-QmU3OxlzGqWmUlxHGvnxBeaXcxSWbALfHxfhSe4C2CNOtAumUm34Ga1TmQPyq5CmJakcJ_wE4c3wbrcnOVT5z-tqRYc2Aaxkv_Al1mTFW2Cbtf8LOeIaNXAJ2hkts_Oj9YVC_P_1r4U3wD7G9ny-asG986zDK_19ON-X3nIBl3PWrn_q5GxjQBw-_HHTzbyN08nKQ8H6Vqw6ldi2AxRSqK2t3nqr1KfvJQ4rMSGpnEqImbLQJ2tW1d=s185-no?authuser=0', NULL, NULL, 1),
('p117', 'vegetable', 'Su hào Hải Dương', 123213, 12000, 30, 'https://lh3.googleusercontent.com/VC7WkUcKc85as_0Umai2Ft0eRr0CMTp2ugD72x8Molopy55czyCnPzHL7HsmwoWD-7y3B0aKR0WvmpxAVn8kW_-HO7My8yQWBX68HHXm_GJ0gvXUFvn_Y0QsB_nYkFAKIv48fb_C0cAKi-Gibb6vmANK3fmfE01UaF7kq01VrbV8QcoMIA9NJJ2ZPjpTk12vXNpUD70iEZqPNEzGMxPib9OhLm-i4yxv_1P1NZ1zpHDSSKcaRr-MZ2Zr47mSwzNGPhvQMl91nRThHhYCU4ngpBHgB7BAIB5B3XwMpFvYHbHixrpmtS0_lGAbsxSTrQY5gV9jEEAJACiOmwQyzopQRqMgIaUSa7g8CIn8LBrbfWMUgQ57U6zCcm2dPfC_tN4FjOMcIrbk5ExKVGakhjzu-8elw5icJXNd3bM-ibOiv_yG1rk-1hcElgzMmwI6P5tp_n_U8_voS0f3vRY23WNUgAzEzxuWyuZgC_OHaNH3FJC6tpZuhkavirGNgac7QdJPG5F-j_oJ3bDaVwpdR5XouF5wHD9i0JCigWVZXp1MQSw6oS7CViqF28QMHtZZXhjpyesPI35vUwCbBnKAXkeP7Pe2vM-Eu6OWReLcaCSiR7zI47qttOmqXZwmc6giY7i57W7yoiqwmRD5krmvK-NwuhaDBm1sE6eFCR7aF6ztWTCyyQGimMb22UIpycQnC2vXvveHQ73JeKrTG5fzWxdrdfKi=s185-no?authuser=0', NULL, NULL, 1),
('p119', 'fruit', 'Thanh long Kiên Giang', 0, 23000, 10, 'https://lh3.googleusercontent.com/KKU8W0Gta0ko9j9k-AwS8M8WLog9R8Zwq5nwGZNCndjArZl68trZGdUSVXKjSCgN6-OgCjnjORv3a7kqXdbBGG9TYO3pXZw59sncgE-6HcHefw-7z51wuX3u6VVnUBkovuO13WbhDkMJex-F8rLZ4YvOtIHU-2i4w3Vv71lr1xVuar_HqgT7mXsQbCU1F2lYUHBes7EStxPHRvp9Zr_Wt88-HbPrDZFJdtM7kVZw1rNqU9eqeUtM_D6bo3q1NQC7c1bs_KrIZe0EeMa7IuOinJ-kLvERSx1NJt6g2ytvidV91nDofOckyn1_m7wBo6NM3vxBxCuRTX5QkXXBJobC9cOONzpvQkn5WFz7h1333Rwkg332oVyKdj56qsbzbdigxG1JISxiG2kEyXugwpWADP_mYWyeNxLddIEN8vSHMCw_q9MGdMuyFE_ulntd6hmZ3Gn9UAjFsUePMJRXwDTD2QnTCeSQ8PBt8we_DQSkgzm3a6iBE7Ohb4W0QrgD-4xFQ7A0F87peH87ZhLEgNJ9OkvlQ_9XR3uB547Hpo9x40ocFOGbYq7z__GgQ0ZHSvA4Wbe5NvL40dTlRE9aljFawKc4eT7CTiDPQw2v9QK7q0Bsot9qlZVDbVBTsfCJcDLBPjdxHBEDq0h0KgNvlhDeEgDM4qiH98WVHrJYoliHTcjaZqsXqIofR6PpywH2CoGlrRkuLgHUBKc7V8Jh9HEQ19sc=s185-no?authuser=0', NULL, NULL, 1),
('p120', 'rice', 'Gạo Vĩnh Phúc', 123, 14000, 0, 'https://lh3.googleusercontent.com/fnIx7hOQseKCoqkvqIUlHbTd2xyg7-09sUpr_8b5_bXyp6ml4vSbDRE0ODctZvnSL8Zc5-4BEudRxN21FXlbLEeAAukOUDE4LRyxQroh0rsxWzZoLZ8vOPSqcP8bF9slUWQgiRLwm-1l_pG7JqP0TNeVlpbYfbV1kcc4PbrGA0kaAs_wu3HqPl9ppuyPheReMPYcIgQ21lPt7QL9Iu8CPv28wXCv7fBldxmHHWLGjnyy3-P-qZiwVu33YtnOXODqAuy8jyNO91boJaOMmAOaYzqFl8QX54SyU6WZd9jS-C55OEltXgDogjRb1SI70Fh7csoIA1eq8kuUFQqzBXDw5Wz8auNNfW5U0fVq0rKblvLFflCaufxsdA9fuprZ5cKDpQSsllaZoeo9YFXKKDQoO2VRBnVDN9zv5FGj8Yxf-d657qguUyOTpyrXywz8fmoOOMyzUPXgkOXR2OVXqSiGczQ9Msxq1xLtloX1Xi9D3dZTIS4HuB2TrHCgKW-juaHCuW5lI-DprtOVU7pW2oRrxXkEDu3pnf1UYVnw9QpIDICc4KvFUZN8JI5TNx4JzCKunZftEZmKRZXf7RdDdKW2aJ3ajZgmXraavZr33quycG-Qs3hpxFU5YoiXgUmSsjjXRCSLEVLZnGVIrlr6Q-N4BMsBfxpBxdSYD7CWbq6zFxxaw9seaz_Q2_RoZPWt_r7HpX8tolnA3iPrzuebr4Qo7BwN=s185-no?authuser=0', NULL, NULL, 1),
('p1211', 'rice', 'Gạo Hải Phòng', 1231, 23000, 0, 'https://lh3.googleusercontent.com/uXRA7oodCW2c973agozxGvHCp7_4cKUGjFlt6NYKyftKTOWjSr574gcrjNF8rSumQgoSjipMPTi54GEm7Z3wBV_fXArVc0G116TplFhfy8rnyxpnHf70dz4LvThtJvZ2hLFZOSQABjsq3hm1w17IsKqbMG1uyUUjHu2kRsQxP6Fphb633IFs2e8jYuns7xhyCUljkouRQK5XAAUcEZLekIimyr66MhzZr8BPFs-T3auk0ynPvvBFnhan5JSFKI288WZcNQDc88Gga-f_y8ICFui38SkKmMFH0e2XalUXEW8oAjBjtKYSmSUZswb8wFA7K9yvdni7HVbUuIaTKuhbPM8Ww7YvX7M8uiHIFXvLNBVDj31wwdJJe4ajA_3cKM0qw60xe9ksDLh8dP5RCx4dW-colIpeBirBsIyL9TcUhJJuyKuuMNvp3FOOf7-h9BoGRIAYqwdTm0VTLwfmNkCqpOZF30GA3H36RF1F_3pv0e_nMelMzmwPjeZE7Ry6Xrc6Ogs7o-zScfZE6mM4a3Ub__M_QVJw2EyEyr2y9HHFASfWCDTOa8KTbrhSqHWLrw7glIdRe4XMy0VKBgKuGQMowWxYoMdn5BUYwUbJ61QT8MXLaozc6A5YV1WTGK5kPBuhMfBX5n_xAUZ-LXarEa3bO3SVvhjtyjk4725P7IfK18bp4I6U79_6ZelUg1FW05HefP42m05QbRJs06KIe3K-tHzT=s182-no?authuser=0', NULL, NULL, 1),
('p2', 'vegetable', 'Bắp cải ', 100, 13000, 4, 'https://lh3.googleusercontent.com/48pKGe9M-QoLXhokKF4ZTUWr-nI-ABkY-dTbS1wuvMBEDA-ijmsl1tLq6TtqHZgcpiGgQrJ9_8BZPrvijQjNxBOlfY3enaJGFUUZrWKgc0USTNhb-RyWGvZCPieeVvKm-bQcJ7L5WxSPIJ5dBGuRJfwYWNTatlAJU_Kx8mdRLrq5lcDk6rJsp8Ox9GZcMxl4wjmWvbkfnRdkXUi9fN4CAnfP29l6imUfYMeKEeckl8ntx__fX55pFQQ8RUqu4jKUYsjidHPHqrcY93rOAgqBrZYSmxRw4l0ZGiPUHqjysCQ-NjCT8weQ705HGhDHAWboz-593otTmBpk8TJ2UU1BxlUdhbM1Khw2xSFzUOFKU5P6jP1BydRmRFAT7nVUiFy-z8O4V5q_A2bNlLFLMQmHIZPSBcYsuRAZMJXbRTWWMrQ1QQ5B6kW_-DG26pLwG_s5Om3AQlWSmoM3N1x9EDvywlOEi1oXaXi5sXziNpy0lGulemOAXDlgFtJqOz8BssvLxXdwgPMUppFflJ8lfNnURC2COcVgiDHvjuY3SMFe-zZ81AB1YwwS4JAAoHftG1RSzMGo_8TnQoCBWMh91mIJcMOhHvgHHVf1JQDGttTpm1JYU2W87IPcMoUwy5ZK_RcAWGjcIGxPJXAWYl7FT_4PeK3Xqp-rnlnPgHz4Cpp5HOIfDwPre8yIomYEyKaojSx0NdEkckcjX1cttEtMdw3keCNl=s185-no?authuser=0', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Hải Dương - Việt Nam', 1),
('p3', 'vegetable', 'Bắp cải tím', 400, 40000, 0, 'https://lh3.googleusercontent.com/GtOkTyehwZwGU6mGZBrznZOJvRUCNx5hIT7JLcLU_33mNwHgb-3h75Y1oEKKG3MKk47v0LQKJQRQ1CNdUXg6I4CqX-Wo19De5FJF-UALEk3r3HfC6tI54lG7Tdl4cMXG1zqkdSrx8IuG76xW2_V-b794wte6AQ3n0cje2EvIn1MmEKoNHSXqp2Z_d-_dRgUKKY-cHqFLxvx2gE19wa2BiWUgpY_JXPGLZ7lxJyVSyp9nl1g29ukvU1ZIDHbOGePmvIQlmGCSD7PB88FNfRoopLGDkfyRk4FJc2XCUyWz_RoFnNqz_GW0VljOkyvDMBaHJRWC5JYWItHLt10uE445Szwu_VAq0AZs6_iGqr3zCE5dXY7hXuUFcAVQDSBdIRaKhofcCzMmwcfvsahBWgTB-m-pWfpKzJlxQh9pkH2_rjRGqny2d0YNfMYtrVT37hrh9tLsqfhuFk5Nyd6MZsmFKnfNqdFoPhAwzawA-2vlU0nhb43AyMT5k-QFoH4-A-2c1xLzk-rkCyv-4_Yev2B5bWGDMfigUMMqBSwXxHxf5MVdCFxZ_Kf_jKFhj0nefYKgZX6J5AnqCgKoIGnLc9f5zv6KnIdbWb4w-Zhgd4GozIumOmtTyxlu0AhiD7hCHErOxb1gSvnDYB3lWqES5MtqOw8nD8w1JT-9YKZkDkhqa6Q0Gl4XRKW5tcemwTuakoQvebO4m0UnbpHanKbhvXVdqojC=s185-no?authuser=0', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Trung Quốc', 1),
('p4', 'vegetable', 'Bí đỏ', 0, 45000, 4, 'https://lh3.googleusercontent.com/pT1xOymHDQAfA0K0nA0uj016LMFhhRuLnPytOc0hRjzvyDFOow6RaviliO4Qvr9pvAfRvB8sUjqTWvAruyFblEYqEaz01aYTAKpkyqr8iqDNluo5QZgNUTG2khX6K0VuotHpfyEaD3kUKotRcFUXr08t6HHQ0hLe9eMwD7H0iWngZWLq1sRfD6b2RmNd8qf8A15o6P_vmkPs65r6lAjTK2lKVivFXUHKGg5HyDLmtDdOBIpw8Nz62p79CbEQ_oSrzmp5htT8DueK04VTENU7oTubfvQn9Ov5eShsYBGAGjQFLzTOBntWjr3ow31iAvjo52DsfWJ0GDdxTgfxjng2jK2ECw60Y3v2V4NXwts7Pr7U7aYvWNlq_j_2779M07XyVf9-aIaETpfx1jiJVqpG8PH5Ld59DIDVAhhUghLlk96Ehp81uD4cH_8Ec3rRrsuyJE1sZn6HukJAlBeN2NwLbtFdrtVcZVukQixW_qc1rq3XYZb2i5bz-WJjHYijghyDcu2R1Ik7SxFLmX9-MIwjLE8ZE_fEo643whs0kYy7muWff7iak62Aj9y42KbmJV2IU9G79YTkn-AfEiCeP9A25IFA-2luD_IRHo65nYaSHJpuQJLfIRZF7kwAqkNxlM8ZnJ__YCQI-hqvsMeySuQo6x_7Vp5dDM9GQifxrGtgbEyW5-x4PYr2oo65vgErGIO5pUwRohRemz3VjAY5PhWC8u0p=s185-no?authuser=0', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Tiền Giang - Việt Nam', 1),
('p5', 'fruit', 'Chuối tây', 90, 12300, 0, 'https://lh3.googleusercontent.com/slgMsrVBfz1ERWVz0YNfalNXbRKB2k3GZd3drSGfbFNxfHBPNkoaCkJYHY_oA0asuQgJGv9P1p-1TVNrPY4mBvjUWZrIiwpN5yQKvRtnzftB3QzeTI_wm7DUP09xg5vSaAm1HLm3y1KL0Txnt8B1I0Dc58nq4pwSQ0iBZ3vvMJ-COlbbI_jmfNVQkhXZMbyh_VphkQ5dLofNRHGKw2Mp5nzs-HScZS51uQTs_uveGn_HMpNQWKQUb1tG_BRe4kr3Gr8NVtl9lsjEMXgthxui6ArbN36o48XwQE4KTnmMGltbnA5tqwJ9_u24PV_8qwL6dkVl5qp50DwmZlh186Kyn9StDuk23bod3K0TRjDC_EkUHyYJUvG2P5-NxRVe1TQ8rz4iWa3GWrmuvAbOeCmd3A3HllPf_zMIWRFTdW6LDScU91wQHalLL_-EaVJcfxkuTIsB8sq9lPVpzVwV8RRwtbEisOfQQqWx71NhZskzJ0NQk1660_c_hfSgw0bAju-lBG7F-rT44kxWUnVdWEhDTjXDt4N8rOUmYPi8PvLcYXCPtIKRUduLVHbogAtSGg9HVBe5RkJa2MHEJ5v5cGrV3BB9dx0b73ye3XAYkDBDuONHqSEgsPQ91_GVTcdvrejvN9KvLtC6Gyd5fn7EQaW9oAmqjc0BZUGPzy7FEMMcqVMF4DaVjv1tSwYZLa0QJDUIG_FRxgrCnC2-JHYvF567qoH9=w185-h139-no?authuser=0', 'Đây là sản phẩm được sản xuất trong nước với giá thành phải chăng, được người tiêu dùng chọn lựa, bạn có thể nấu hoặc xào nấu rất ngon. Một thực phẩm tốt cho sức khỏe.', 'Hưng Yên - Việt Nam', 1),
('p6', 'rice', 'Gạo ST25 Việt Nam', 4, 156000, 5, 'https://lh3.googleusercontent.com/cylgWsWZYNcx7Vyfy_ovQ7U6ho3_nfolyCVh9yvUoLuRJAtpdfpBOgYPSgDhGoQxzMv36JkB-mEpFGq_urkql0k5SfTct4m0OV9lAyimBRDb6TTDTya1axQDflBL7UE144TruEV6wEx9rJY6MqO_b8PxVKRVbBkUCpHfyBtLmTYE5SqWP1-4axmtZjaOH-HnaJQypYCi7tlUBxXPP5hAz0-LXxDJagBbidL335D_-Nfx-hYdggpqXNYsG1Vgp3qZnLjIvvaTVSw1QVtBVffEYuI4oxD2wIQUlemP_os00gMzZV1OqsuqdEicTxnee9qcqz190IzfCZgP-BSnHyLttTQmiD9N3VVBa7Yo_p9QpbZcJbf6dtg71C356UttoNPRkk9y-528h825H3pDA7ZzuTWIU8U0-IAcZ_3zU1QXivsN0YxrG3gqUBa2C1GWyMbcmAbMk7W92CVwyqFlmQlPdsFQh7soQFFrCIn7lMfAXHNmQ93eADeIPDu8oUcEv1-RHL_vSXQ-vrpDuUcrBY_VZb7-nUPC4Xr_eMP_wiBJHFZ074Rzpgyf8twkFuoKostJZ5j9e0NZx8vDz8xNOZvGaNivcr8GBxN1P5LfkLmonxfVdf5UWKJzMFkFmRi1XHkxwzYKP8cGuAFD2_j3Cp1IvFPL00N77E9NTimYY7gdXkus8-8eKO_DMOAMbPlIqG29ceolsus_rCvcXtU-Qxf7k3h1=s185-no?authuser=0', 'Đây là loại gạo ngon', 'Việt Nam', 1),
('p7', 'rice', 'Gạo Hải Dương', 0, 19000, 0, 'https://lh3.googleusercontent.com/EHxciMZSZOS39jPkAcm6ZNdozzel2xo7ei-rZXxLL8O3EkQAXdfQCbpfK8qyLFsXsDGYdDaP8awIB_6B9d7mloASIl2OdIpGr1uwH85dI0Oae5ya7sRY4ZoSiR7wjp2y_wJ1yjqQpsfpXMRd2IZkAQ-OQN1-BDZls73TWP5tAIvh8GGuIfdlXDnkB-ZxC2lI8bwypwUYVkLfonmh4Uo5XG9_HqPLBpEpbJQTeAxaZ8ZAhaz9myET8VztXW8rhuoSfe1ArKDQ6TnfOBeUt5HDkYnP41VpFjLxPUNAXkiIxzr1LkpmhrOdOpB1Mywr_KWTm2twrzGTwBHVB83aGKK5N5k0ZiGmBl79UzhKQNQxkFwGSuCGAWgn8RSY4Pf21hgfQAIsrXkrKo8gPiLMaG4Z7lmMURFxXff_4nATacyVf_gI_N9BapxWxKr6MKnP88Y1b0fzjZ_PkQuQ8eRRGCXXp7Z39GGzjkft6d9cDTuzAh6Wc3kcIC5qYNGN6OIWnGw4C_JCF42GLJzZk_DLUaq9lkeOEgHY7wbTvbKMJa8a29YZFagc4pY_6XmJbBekzN557dga7ZRBszYU4pCFS4pTapLbhNLnZntxqsyK6VTcukrozjc3xwQUPqLeemL7XL_RXeJ5sH9Q5ipMXbp10hNzm9y5jDFX8ANkscBuWZtl9mnPVgqUF5vbVxoGs4mhpPhYATSYBzcNU_H80PIDn1WZPL0D=s185-no?authuser=0', 'Đây là loại gạo chất lượng được xuất khẩu đi khắp thế giới hạt dỏe gạo ngon thơm ngon bổ dưỡng', 'Hải Phòng - Việt Nam', 1),
('p8', 'vegetable', 'Cà chua', 100, 23000, 0, 'https://lh3.googleusercontent.com/rstjm4HLAu7oq3-TIKbr6b5TPngsDVjGGvRq09vI0SfdGOs_YMuagw0Oa5dl1tu9ghj_n7joGLSSVrcePZofwJY5q_5Vqdniw3hhXdz5TEwrpO4hxSOcJCe4R43CQxMUkfWP7HtbcrWaSDNfoDwKiERg_TcVuzW5xYZA3RtRkGh781bEp4PduSKzrKIkBB31iDB9kKIj20zI25LdJi1b1Ze4JraNfGF3BDd6uXGEUm_QdWu7BaUowSGgoBdFpgpfhTJuvynnSD7klw6VZqk8JrJTi22YW3Mfu4QmZGL2FAKxl5y_oh0t9BhYA4ZQLwTDpRVBswJkYosJE8nqayViwIGpmsD5XwPVLSp_63kZP-D98R-3y5yr_kdmalRPDoSMdEP1Xk7CV7noetDGTuV5i61GkmhOjKHhTgFJhFXIGVYctOlr-Lz-hTRw7xmdf5wrx_H2S7IZHsVmXFQZUwH0R40QsAvhUukmlT_OrYg6bSlPg0GaG9B58Fhnw_csBFC9VGLM5Aq4zz2gL8kf2xVoowkMJ1NLBr_KEb5j5Zv4kIqzJvzwCPN4Abm9fZaNBPzwC1AvrZ0Oe6XMZ-fC5kaIjGK4ner2XWSno1J1Y7OhVbOPzOiL9LDpCa7VqHpaMjuzIqWFYM1lvEYmP0ZClji2NX7HM-DU2kd376zRuaGORfgV0_z4ZDuGADW9YCTgIBXzngwV6-kT0Xp7nKvSjwSMwmbr=s185-no?authuser=0', 'Đây là sản phẩm sạch, được trồng tại hải dương', 'Hải Dương - Việt Nam', 1),
('p9', 'vegetable', 'Cải cúc', 200, 12000, 0, 'https://lh3.googleusercontent.com/ldSqbNl3CiLly0NDlCCwQleOUPA5C-btvz4Z5-7PjhpEbkSS8_i6JhfBw_ZsVpUXf-TMOpiC9A_W0wYx4cZJwDK0Z-MnBi2IYJCfRld7s-h3VSOq2T5eBbqiSgXNZD_wUGyChFrAPn_zYgnLjSKxJvu9XUbJlYAJb3Cnu0xMBK4bDm04CbAUl6ILiiRJyVzsuLCO0n6_969B3dpBFmAYTBoN0uFitHi8bnuCZ1dCVWruRxn5uxQMKqZU0pFtRI2vEJuh060CkZJvo8al2QLUiqmmHnMF5co409c-MlLvPgFlCEY0z6u66_7GKbO0YOHve5lhQG63rDEEyfeyduS5IF2cAP5nCMVVACbDpg6oAw04HTDITjKHiuQ1e4p2anQCoUUrMdJfi0GAtMlCtLvRLcLEtO2QmSFT_YzmyjwzNi09Yqb2bcGbURgXSKM_5bvtK8swdWE5Z7iaDaqnMtQ09nwADojtzEH80za-z7C3S2mGY3qpL0H994f9RMngH4lkRDRWcxxHDbwVOGQNdWy2kxqhvhtjpt_WS_OEgVEWjGMyOnXxJdn5nVhC663mQVcvziTf6n6fqT173d2BUgJn6LCKi5_95lJQb9QLdrrxAkKs93gmfRawL9i0dFQ-l7rskGbZpbliAil8ISKqgX-LwfOkoL5BfAK_KzSt8y-QY8gNheE-RvX2qFI93i-sJceDzBAlJMjuq_5tVVgIAQ27aaSy=s185-no?authuser=0', 'Sản phẩm tốt', 'Việt Nam', 1);

CREATE TABLE `table_order` (
  `id_order` varchar(50) NOT NULL,
  `id_customer` varchar(50) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `id_order_status` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL
);

INSERT INTO `table_order` (`id_order`, `id_customer`, `phone`, `address`, `id_order_status`, `create_date`) VALUES
('14f9ebd8-b15e-4347-90d7-986041f4ec83', 'kh1', 1234456666, 'Thanh Tùng', 2, '2021-07-01 09:10:42'),
('243acebb-14af-474e-9990-672a0b46c461', '2de1876d-f963-4b8c-aaef-d0b96f9c3219', 3223, 'cầu từ ô', 1, '2021-07-02 22:30:23'),
('36f10312-95a0-41f9-aa68-8cf9d1f6f131', 'kh1', 1, 'haaa', 2, '2021-07-01 18:41:26'),
('38a6b1ea-a90f-4ccf-9f8e-1d1bea5fd40a', 'kh1', 2147483647, 'thanh miện', 2, '2021-07-01 17:26:41'),
('3ddbc157-ded1-40d4-8055-9407f8f588ea', 'kh2', 23, 'hải phòng nam định', 1, '2021-07-02 21:58:55'),
('71ad33f4-f570-4818-9f44-27900542b383', '3f992e17-96c3-461e-ae04-7fcf5c5a0d41', 213213, 'hưng yên', 1, '2021-07-02 22:14:36'),
('814db289-09f0-451f-979b-6d9807357204', 'kh1', 11111, '11 duy tân', 2, '2021-07-01 17:13:46'),
('99135345-cd9f-406f-acd0-4d262eb8143b', 'kh1', 2147483647, 'hải phòng', 2, '2021-07-01 17:23:06'),
('b14cc2e5-0db3-4891-a4cf-ff3dfbbff0a2', '60907dd3-1c5e-4329-933f-9dee0cdd7788', 123132, 'hải dương', 1, '2021-07-02 22:19:37'),
('b683389f-5694-42d2-88f7-4c07f9737984', 'kh2', 1123123, 'hà nam mmmmm', 1, '2021-07-02 22:02:31'),
('bfbfa8b8-67e8-4e2b-b1ac-6995b93f6c50', 'kh2', 375340525, 'Phạm Kha Thanh Miện Hải Dương', 2, '2021-07-01 09:06:11'),
('dc786d88-3f20-4b57-9f08-a461fd42079b', 'kh1', 1900987, 'FPT Cầu Giấy', 2, '2021-07-01 08:32:49'),
('f927e42f-89ee-4062-869a-3b1d554a1d2b', 'kh2', 911, 'Mỹ', 2, '2021-07-01 18:08:30'),
('fdf91b67-bcdf-47cd-865f-6f75c8407115', 'kh1', 123456789, 'hải phòng thanh miện hải dương', 2, '2021-07-01 17:27:41'),
('order1', 'kh1', 987654321, '146 Vương Thừa Vũ', 3, '2021-06-02 10:45:39'),
('order10', 'kh2', 983746212, '67 Hoàng Quốc Việt', 2, '2021-06-04 03:47:55'),
('order2', 'kh2', 98374593, '123 Cầu Giấy', 4, '2021-05-04 08:46:12'),
('order3', 'kh2', 98763522, '456 Trường Chinh', 4, '2021-04-01 01:46:39'),
('order4', 'kh2', 374653789, '123 Trần Vỹ', 4, '2021-06-30 04:46:52'),
('order5', 'kh2', 98765273, '12 Duy Tân', 2, '2021-06-08 06:17:07'),
('order6', 'kh1', 982345672, '56 Phạm Văn Đồng', 2, '2021-06-16 04:46:01'),
('order7', 'kh2', 98345672, '34 Nhổn', 4, '2021-06-23 12:47:20'),
('order8', 'kh2', 935829743, '175 Tây Sơn ', 4, '2021-05-06 05:47:32'),
('order9', 'kh2', 93234323, '34 Hoàng Văn Thái', 2, '2021-06-16 01:47:45'),
('test1', 'kh1', 123456, 'Hải Dương', 2, '2021-06-28 16:40:50'),
('zxcv', '27550908-184c-415b-8e63-b0a5b6c69d5c', 11111, 'Thanh Hóa', 2, '2021-07-01 12:50:54');

CREATE TABLE `users` (
  `id_account` varchar(100) NOT NULL,
  `role` int(11) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL
);

INSERT INTO `users` (`id_account`, `role`, `username`, `password`, `name`, `phone`) VALUES
('27550908-184c-415b-8e63-b0a5b6c69d5c', 4, 'top', 'top123', 'TOP bigbang', 1223213213),
('2d6ce11f-91be-4231-9074-198ba3fd77d3', 4, 'hang12363', '123', 'chihang', 11189),
('2de1876d-f963-4b8c-aaef-d0b96f9c3219', 4, 'toan', '1', 'Phạm Văn Toàn', 21321),
('3f992e17-96c3-461e-ae04-7fcf5c5a0d41', 4, 'tranghp', '1', 'Đăng Linh Trang', 34234),
('40bef817-4b04-48da-81d9-6fb36a48a04d', 4, 'phucnguyen', '123', 'phucss', 1111),
('468408f7-297c-4c4b-9315-bc303d7f713d', 3, 'ship1', '1', 'Quang Trung', 111111),
('60907dd3-1c5e-4329-933f-9dee0cdd7788', 4, 'hanh', '1', 'Nguyễn Thị Hạnh ', 123098),
('6cf7d9c4-a953-4a20-8ceb-b4b565104157', 3, 'huyenhp', 'hp', 'Thu Huyền', 2423),
('79c6cbb1-42cc-499c-a528-0fa46228207f', 4, 'tamm11111', '1', 'Quang Trung', 111111),
('8a7da7d3-2091-472e-ae07-5a3f1193e2aa', 2, 'hung', '1', 'Nguyễn Văn Hưng', 2312),
('a1fc0779-20f9-4a6d-b0e2-2b1848565f74', 3, 'quangtrung', '1', 'Quang Trung', 111111),
('admin1', 1, 'admin1', '1', 'Hồ Ngọc Trung', 987766552),
('d87f9287-5ba9-4e11-9c9d-691a336b888f', 4, 'phuc1', 'abc', 'Nguyễn Xuân Phúc', 1222222222),
('fe818ef3-bf1c-4594-beaa-3d3f5edb3f05', 4, 'test1', 'test1', 'Nguyễn Xuân Phúc', 837372838),
('kh1', 4, 'kh1', '1', 'Nguyễn Văn Hưng', 375340525),
('kh2', 4, 'kh2', '1', 'Trần Hưng Đạo', 98165483),
('sale1', 2, 'sale1', '1', 'Phạm Thị Thanh Tâm', 865915552),
('sale2', 2, 'sale2', '1', 'Đàm Vĩnh Hưng', 222245679),
('sale3', 2, 'sale4', '1', 'Chị Mai Trang', 893343249),
('ship2', 2, 'ship2', 'ship2', 'Thomas Anders', 981236788);

ALTER TABLE `order_detail`
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `payment`
  ADD KEY `id_order` (`id_order`);

ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `table_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_customer` (`id_customer`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`id_order`) REFERENCES `table_order` (`id_order`);

ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `table_order` (`id_order`);

ALTER TABLE `table_order`
  ADD CONSTRAINT `table_order_ibfk_3` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id_account`);
COMMIT;