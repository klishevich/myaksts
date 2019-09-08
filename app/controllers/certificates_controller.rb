class CertificatesController < ApplicationController
  layout "certif", only: [:show, :edit]

  def index
    @applics=Applic.limit(300).where('participation_type != ?', 'publications_only').order("fio")
    # .find_all_by_participation_type(["participance_no_report", "Очное"])
  end

  def show
    @applic = Applic.find(params[:id])
  end

  def edit
    @applic = Applic.find(params[:id])
  end
end
