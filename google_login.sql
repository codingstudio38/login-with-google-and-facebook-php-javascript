-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 04:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingstudio`
--

-- --------------------------------------------------------

--
-- Table structure for table `google_login`
--

CREATE TABLE `google_login` (
  `id` bigint(20) NOT NULL,
  `pwd` varchar(220) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tel` varchar(200) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `G_id` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_givenname` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_familyname` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_photo` varchar(300) COLLATE latin1_general_ci DEFAULT NULL,
  `G_email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `G_idtoken` mediumtext COLLATE latin1_general_ci NOT NULL,
  `login_type` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `google_login`
--

INSERT INTO `google_login` (`id`, `pwd`, `tel`, `G_id`, `G_name`, `G_givenname`, `G_familyname`, `G_photo`, `G_email`, `G_idtoken`, `login_type`) VALUES
(54, '123456', '4433093999', 'login_with_vkweb', 'Admin', 'login_with_vkweb', 'login_with_vkweb', '123.jpg', '38vidyut@most.com', 'login_with_vkweb', 'login_with_vkweb'),
(61, 'login_with_google', 'login_with_google', '110082795668038672050', 'Bidyut Mandal', 'Bidyut', 'Mandal', 'https://lh3.googleusercontent.com/a-/AOh14GhH6CXmOjcAlbPJgszvL6vizW5Yq1yy4q2b7hrVEg=s96-c', 'mondalbidyut38@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTEwMDgyNzk1NjY4MDM4NjcyMDUwIiwiZW1haWwiOiJtb25kYWxiaWR5dXQzOEBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjVNLXpLMTlnT0M0RlBaWnd6WnN4OEEiLCJuYW1lIjoiQmlkeXV0IE1hbmRhbCIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHaEg2Q1htT2pjQWxiUEpnc3p2TDZ2aXpXNVlxMXl5NHEyYjdoclZFZz1zOTYtYyIsImdpdmVuX25hbWUiOiJCaWR5dXQiLCJmYW1pbHlfbmFtZSI6Ik1hbmRhbCIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ3MTAyMjk0LCJleHAiOjE2NDcxMDU4OTQsImp0aSI6IjI2OTM3M2NiY2M1NjhiNjU2ZTMwNDg1NmM5NDE1YzQ0YzA1ODBiZjUifQ.eT_9mZYG4jk8ZxXp-Nf61i_t7qJhIUVC3GHAC_z9BgXbf8kUMbBtCuYkzgf-VUvkTaPlgnYVoVpm_GNX2g1Lh46p55KbBE8AzrQVMH-I8_JcBS6K4JN-rgO3P7Ql7B4qdk3pGoAD8h5GnsTVVHGKwuvhFLS02KwFfUBxWi9busoeYi8oO3CfHi7_TyIwCFRA4Tmwse7SAHN0VFN9ACtLss275U7DnCAi-JavtJzaaQnMJOcanhpk6_q77Q2ZkCJGKy9cZQt97b0aUwBuoHtDWs8rA_0XqeQxvVj8dJiJEnE0DhvUS66tDAvWst2GwwXpdjpMCZODU8-8cA1b-9BD7g', 'login_with_google'),
(59, 'Tufan', '9337024267', 'login_with_vkweb', 'Kuta tufan', 'login_with_vkweb', 'login_with_vkweb', 'login_with_vkweb', 'tufanray35@gmail.com', 'login_with_vkweb', 'login_with_vkweb'),
(63, 'login_with_google', 'login_with_google', '102334998785071074689', 'Mr.masterVk', 'Mr.masterVk', '', 'https://lh3.googleusercontent.com/a-/AOh14GiUAyZI1kmdMuV2SkKj3DfIVUdmRQ_lkkcnbLt5=s96-c', 'vidyut.star006@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTAyMzM0OTk4Nzg1MDcxMDc0Njg5IiwiZW1haWwiOiJ2aWR5dXQuc3RhcjAwNkBnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwiYXRfaGFzaCI6IjdUS1NhTm56aF90c0lOVXllcnZPWFEiLCJuYW1lIjoiTXIubWFzdGVyVmsiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2lVQXlaSTFrbWRNdVYyU2tLajNEZklWVWRtUlFfbGtrY25iTHQ1PXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6Ik1yLm1hc3RlclZrIiwibG9jYWxlIjoiZW4iLCJpYXQiOjE2NDY4ODA4ODcsImV4cCI6MTY0Njg4NDQ4NywianRpIjoiMmRlZjFkMTMwOWM4ZjViZDkyZWNiOWY0ZTc2MzE0OWQxMzJmODMxNiJ9.clkSWx4ou17vdMfFyjXY9McZGsyxWoRUwtowX2hzxSwdcYhIM8vl3Pef8f8sdqBWgYQ_Cuo6Aj1Fj6JYiOlt6L7JpAN0Smc8Nx8VkAXGtpbK8PQCIqa4F66VoBOeKQsLbF4aghos54P6tbUBObIZhwCJWaAsvA8hNd8OikNcT7VOvBuk8M4vOsxtYPj4MukjlLu0hOUnPpiW3fgJ3whsiISjHqSKbFnmS9AjGnrNNqbOpJsTutFx5Vl6k9dLMyDVK4qv5BQ8Gxn5SH0Xs9DGAzrEIZTCyMTKuVSjsI8X8r0jPBE6owODGZ5h39_ifDvgxjXLfrct7KW1zcrDbXFZaQ', 'login_with_google'),
(62, 'login_with_google', 'login_with_google', '107576614173355657032', 'Vidyut Kumar', 'Vidyut', 'Kumar', 'https://lh3.googleusercontent.com/a-/AOh14GgxWFsjShA7ewK270b1Zy8TIA98x2QZwmBGB_ZA=s96-c', 'vidyut.languameter@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA3NTc2NjE0MTczMzU1NjU3MDMyIiwiZW1haWwiOiJ2aWR5dXQubGFuZ3VhbWV0ZXJAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJpTnBRNF9SMDhLaHlhamlCam9LSGZnIiwibmFtZSI6IlZpZHl1dCBLdW1hciIsInBpY3R1cmUiOiJodHRwczovL2xoMy5nb29nbGV1c2VyY29udGVudC5jb20vYS0vQU9oMTRHZ3hXRnNqU2hBN2V3SzI3MGIxWnk4VElBOTh4MlFad21CR0JfWkE9czk2LWMiLCJnaXZlbl9uYW1lIjoiVmlkeXV0IiwiZmFtaWx5X25hbWUiOiJLdW1hciIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ3MDU0MTcyLCJleHAiOjE2NDcwNTc3NzIsImp0aSI6IjdkODBkY2E3ZjZjOGM1OGY5YzdmZTlkMjM3ZDFhZDlhNDRmMDViMGMifQ.ckAJnbKqYv1ZvE4mx0XihANsZpQmnAFZ-OJs34an8JN3ba6FYygeXTRBISXPXj5mkgjMjhcZqE4PPynMAQWjdjs-jkDlLzdgRyX66zdB7McHGKJbi2BbT1ZJIGrRkZiCEhKf0AMoYver-hXsaiy04cedtJyH5F7XckBKnvOatXVpiYocCvOfnIPrHnxBmDC6sXwthMv0c5q1lujLFdy5UTopJylMbyZFbN0teLkhg7pOaySxLujxh_fS5iA0CB71dxHWUZw_0b_gRCtL5xyyqpkmvbhJtkmdhoKKD88ZZjo0s-7thF5UgmbiAa5xFIEY6Rl35Ug-mibtYCJfdrfdqw', 'login_with_google'),
(64, '123456', '1212312312312', 'login_with_vkweb', 'vk', 'login_with_vkweb', 'login_with_vkweb', 'login_with_vkweb', 'vidyut.star0061@gmail.com', 'login_with_vkweb', 'login_with_vkweb'),
(65, '123456', '1234567890', 'login_with_vkweb', 'Vidyut Mandal', 'login_with_vkweb', 'login_with_vkweb', 'login_with_vkweb', 'vidyut.kumar006@gmail.com', 'login_with_vkweb', 'login_with_vkweb'),
(66, 'login_with_google', 'login_with_google', '104875500763275337998', 'online massage', 'online', 'massage', 'https://lh3.googleusercontent.com/a/AATXAJzB60-SJL_w93H2z_YJSzgxamy8DNFMG1w-q5X7=s96-c', 'onlinemassage09@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6ImQ2M2RiZTczYWFkODhjODU0ZGUwZDhkNmMwMTRjMzZkYzI1YzQyOTIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA0ODc1NTAwNzYzMjc1MzM3OTk4IiwiZW1haWwiOiJvbmxpbmVtYXNzYWdlMDlAZ21haWwuY29tIiwiZW1haWxfdmVyaWZpZWQiOnRydWUsImF0X2hhc2giOiJ6M0p4QmlZQU9fOU1pTXJELU81Uy1nIiwibmFtZSI6Im9ubGluZSBtYXNzYWdlIiwicGljdHVyZSI6Imh0dHBzOi8vbGgzLmdvb2dsZXVzZXJjb250ZW50LmNvbS9hL0FBVFhBSnpCNjAtU0pMX3c5M0gyel9ZSlN6Z3hhbXk4RE5GTUcxdy1xNVg3PXM5Ni1jIiwiZ2l2ZW5fbmFtZSI6Im9ubGluZSIsImZhbWlseV9uYW1lIjoibWFzc2FnZSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ2ODgwOTEzLCJleHAiOjE2NDY4ODQ1MTMsImp0aSI6IjI3YmNhYmU5Y2NlZDliMDFlMzhmMGI4ZTRiNWE5MTkxNDIyMzE1ZDYifQ.LLRwQSdPAnqj46e9lzr5vQiX3XrXPelBZo94qKk3PsUw6lQZ9YkMq2EhvTCxLZCqLWXCeJn3gbMm7SjGrJgke11nnFE85v2Qcg2-AesfPQIHcZ6XrjkpWYkitRt8wd1o5ZHNE2UP2wuVw8v9TBA3Ai_TEF364u88LbH8_7A_mSifNgB7Uj_qolxrh_8sgPlDOxhRvMbI_bdhsO6sKelhHFgArDzqlB_Um1trJPxV7oKJjcnxf2E3STLoT7cpSE11XyvlPMnuEfxQEB9DACBSP6Q0-vWZ-szTvAfZlEgteZDCS8mKeYdP_J0C3xjcMaYCWzTC-JAMi_PwJQOkjux3ug', 'login_with_google'),
(67, 'login_with_fb', 'login_with_fb', '1685526511792390', 'Bidyut Mandal', 'Bidyut Mandal', 'login_with_fb', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1685526511792390&height=50&width=50&ext=1649694331&hash=AeQbsmbt5idkE9tMz28', 'vidyut.star006@gmail.com', 'login_with_fb', 'login_with_fb'),
(68, 'login_with_google', 'login_with_google', '107808473645953926063', 'Amit Jena', 'Amit', 'Jena', 'https://lh3.googleusercontent.com/a-/AOh14GhiDJXs8B0BlqkSlniWvE5H88_3zaL6jHhJFEuNdg=s96-c', '180101120037@cutm.ac.in', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjcyOTE4OTQ1MGQ0OTAyODU3MDQyNTI2NmYwM2U3MzdmNDVhZjI5MzIiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA3ODA4NDczNjQ1OTUzOTI2MDYzIiwiaGQiOiJjdXRtLmFjLmluIiwiZW1haWwiOiIxODAxMDExMjAwMzdAY3V0bS5hYy5pbiIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiUXlFbWZ2SUpRYkx3enNpeURBdWZoQSIsIm5hbWUiOiJBbWl0IEplbmEiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2hpREpYczhCMEJscWtTbG5pV3ZFNUg4OF8zemFMNmpIaEpGRXVOZGc9czk2LWMiLCJnaXZlbl9uYW1lIjoiQW1pdCIsImZhbWlseV9uYW1lIjoiSmVuYSIsImxvY2FsZSI6ImVuIiwiaWF0IjoxNjQ3OTI3OTAyLCJleHAiOjE2NDc5MzE1MDIsImp0aSI6ImVmYTYxY2FhYjFjZDVlOTk4ODI1ZWY5OWJmMTVjYmQ2MWZiNmEzNWYifQ.dSkx-OuLPICy-46ULN9O0VOLJIr5ZsobsI1twbVux4p5NRNJC0nPGNYET48ilcrKbpZNb4tGv5UbkoVqxBqniZ5xC1TDOBIXNgy1Lef3pLLNYp91fbLhSwDKvdfJxmtdLX3MBkFFmDpytNokev3ciiyrLsp2JqXZotr0Q7RnyKRwFMA89XReUSCW_nfkq6fJLWpkzJjnoHB8UHKHY6iSBcnp_GEQvz_7CSI6hQRjQIlDEH4KuOItjNFJlj3vlh0jvWd2O1OvKwUQHLfTphz_1Go56CpbO9tuL_WLhyUbkyWfGmBIEaGtQkEahOrpzIvf6HVUr-e1x-xS3iLGrQaWTw', 'login_with_google'),
(69, 'login_with_google', 'login_with_google', '109368969385171625268', 'Bidyut Polosoft', 'Bidyut', 'Polosoft', 'https://lh3.googleusercontent.com/a/AATXAJwmr2MD07tdTTzDOju36e0R1MGmu0OBF2pbKKar=s96-c', 'bidyutpolosoft38@gmail.com', 'eyJhbGciOiJSUzI1NiIsImtpZCI6Ijc0ODNhMDg4ZDRmZmMwMDYwOWYwZTIyZjNjMjJkYTVmZTM5MDZjY2MiLCJ0eXAiOiJKV1QifQ.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwiYXpwIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwiYXVkIjoiNDA1MzgwNjczODc0LTAxNm4yZWd2OWN1a2RlNmJ2bTNrMnRpanBtaW9zMHZlLmFwcHMuZ29vZ2xldXNlcmNvbnRlbnQuY29tIiwic3ViIjoiMTA5MzY4OTY5Mzg1MTcxNjI1MjY4IiwiZW1haWwiOiJiaWR5dXRwb2xvc29mdDM4QGdtYWlsLmNvbSIsImVtYWlsX3ZlcmlmaWVkIjp0cnVlLCJhdF9oYXNoIjoiODJjc0RGeEpKYUNjM1MyTmhDY0NidyIsIm5hbWUiOiJCaWR5dXQgUG9sb3NvZnQiLCJwaWN0dXJlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EvQUFUWEFKd21yMk1EMDd0ZFRUekRPanUzNmUwUjFNR211ME9CRjJwYktLYXI9czk2LWMiLCJnaXZlbl9uYW1lIjoiQmlkeXV0IiwiZmFtaWx5X25hbWUiOiJQb2xvc29mdCIsImxvY2FsZSI6ImVuLUdCIiwiaWF0IjoxNjU0OTIzOTY1LCJleHAiOjE2NTQ5Mjc1NjUsImp0aSI6Ijc4MWQ5YmY2OGEyZWYwZDljMjlhYWUwMWViMjM4MGIxOGM2NjZhOGUifQ.NXGEQPYJmYj3QCRLbKsXhn3Hv_3MfOokEDd2M1sFVylzQgNg-9wJxMgvEz6oT5Vko7JDEtxHZGA8DFWpnngOD1wGvUI7iAsJv62q7OX6q3rM7WEZgGfGgRzR0SzY8fTsnVJJ_dBoAbdSnXw3HteuFQPIonoxVy0GrAEbCridXdfyrmfbp3LCP-CTij9I8z8yZDNQAHg8I7-ZVd6PmYfPN0a1lAgZ0Ts91krdWjIg5O7umhF_xT85v6kzGmF43Z0sofsiyLj8Wxwci0xlN88pTxJspFHXtfoLms7cIqrjTblKOOoBjx8xHSxecK7osggoxh8mOQNLHePVdoVhYSOEOw', 'login_with_google');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `google_login`
--
ALTER TABLE `google_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `google_login`
--
ALTER TABLE `google_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
