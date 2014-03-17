class ApplicReport < Prawn::Document

  def generate(applic)
  	@applic = applic
    font("#{Rails.root.to_s}/app/reports/fonts/verdana.ttf") do
      # line spacing
      lead=5

      text I18n.t(:anketa), size: 22, :leading => lead
      text "#{I18n.t(:application_number)}: #{@applic.id}", :leading => lead      
      text "#{I18n.t(:application_date)}: #{@applic.created_at.strftime("%d.%m.%Y")}", :leading => lead
      text "#{I18n.t('activerecord.attributes.user.is_antok_member')}: #{(@applic.user.is_antok_member ? I18n.t(:yes1) : I18n.t(:no1))}", :leading => lead
      text "#{I18n.t(:id_antok)}: #{@applic.user.antok_id.to_s}", :leading => lead
      
      text I18n.t(:personal_info), size: 22, :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.fio')}: #{@applic.fio}", :leading => lead
      text "Email: #{@applic.email}", :leading => lead
      text "#{I18n.t(:phones)}: #{@applic.phones}", :leading => lead
      text @applic.user.is_antok_member ? "" : "#{I18n.t('activerecord.attributes.applic.fio_eng')}: #{@applic.fio_eng}
        #{I18n.t(:birth_date)}: #{@applic.birth_date.strftime("%d.%m.%Y")}
        #{I18n.t('activerecord.attributes.applic.sex')}: #{@applic.sex}
        #{I18n.t('activerecord.attributes.applic.post_address')}: #{@applic.post_address}", :leading => lead
      
      text I18n.t(:education), size: 22, :leading => lead
      text @applic.user.is_antok_member ? "" : "#{I18n.t('activerecord.attributes.applic.edu_institute')}: #{@applic.edu_institute}
        #{I18n.t('activerecord.attributes.applic.edu_institute_address')}: #{@applic.edu_institute_address}
        #{I18n.t('activerecord.attributes.applic.edu_specialization')}: #{@applic.edu_specialization}", :leading => lead      
      text "#{I18n.t('activerecord.attributes.applic.uch_stepen')}: #{@applic.uch_stepen}", :leading => lead

      text I18n.t(:work), size: 22, :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.work_company')}: #{@applic.work_company}", :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.work_position')}: #{@applic.work_position}", :leading => lead
      text @applic.user.is_antok_member ? "" : "#{I18n.t('activerecord.attributes.applic.work_start_year')}: #{@applic.work_start_year}
        #{I18n.t('activerecord.attributes.applic.work_department')}: #{@applic.work_department}
        #{I18n.t(:work_specialization)}: #{@applic.work_specialization}", :leading => lead      

      text I18n.t(:additional_info), size: 22, :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.antok_city')}: #{@applic.antok_city}", :leading => lead
      text @applic.user.is_antok_member ? "" : "#{I18n.t('activerecord.attributes.applic.public_organizations')}: #{@applic.public_organizations}", :leading => lead       

      text I18n.t(:applicaion_info), size: 22, :leading => lead   
      text "#{I18n.t('activerecord.attributes.applic.science_interests')}: #{@applic.science_interests}", :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.conf_topic')}: #{@applic.conf_topic}", :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.conf_section')}: #{@applic.conf_section}", :leading => lead
      text "#{I18n.t(:conf_coauthors)}: #{@applic.conf_coauthors}", :leading => lead
      text "#{I18n.t('activerecord.attributes.applic.participation_type')}: #{@applic.participation_type}", :leading => lead

    end   
  end

end