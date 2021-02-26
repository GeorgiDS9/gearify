class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @category_images = {
      "cycling" => "https://www.rei.com/dam/content_team_080317_61569_mountain_biking_beginners_lg.jpg",
      "mountain & hiking" => "http://t.wallpaperweb.org/wallpaper/sport/1920x1080/mountainsports1920x1080wallpaper2611.jpg",
      "water sports" => "https://www.mensjournal.com/wp-content/uploads/2015/01/GettyImages-1137905762.jpg?quality=86&strip=all",
      "snow sports" => "https://assets.simpleviewcms.com/simpleview/image/upload/c_fill,q_65,w_1600/v1/clients/norway/hemsedal_ski_resort_eastern_norway_photo_ola_matsson_2_1_fb3ddacb-9ea4-4877-81e5-e9a5d3dfe337.jpg",
      "motor sports" => "https://www.tagekarting.com/DATA/GALRERIEPHOTO/1096_gallerieZoom~v~.jpg",
      "extreme sports" => "https://www.escalade-letra.com/wp-content/themes/ciel/images/header.jpg",
      "urban sports" => "https://communityimpact.com/uploads/images/2020/11/24/103451.jpeg",
      "club & ball sports" => "https://static.wixstatic.com/media/1ae546_8d49c761335e41069d57c095af5d15e0~mv2_d_3780_2671_s_4_2.jpg",
      "team sports" => "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/redenen-teamsporten-1567416555.jpg",
      "martial arts" => "https://miro.medium.com/max/1920/1*lCDDvo_18bOxFukltpkFkQ.jpeg",
      "athletics" => "http://sportsgroundproduction.blob.core.windows.net/cms/10326/67589/202834/be883358-3e52-4f3c-ba76-f2620030570b_wo.jpg",
      "other" => "https://penaltyfile.com/wp-content/uploads/2020/06/different-types-of-sports-June32020-1-min.jpg"
    }
  end
end
