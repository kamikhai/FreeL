<#macro opportunity header description delay icon>
    <div class="col-md-6 col-lg-3 text-center">
        <div class="mx-auto service-box mt-5"><i class="fa fa-${icon} fa-4x text-primary mb-3 sr-icons"
                                                 data-aos="zoom-in" data-aos-duration="200"
                                                 data-aos-delay="${delay}"
                                                 data-aos-once="true"
                                                 style="color: rgb(74,83,118)!important;"></i>
            <h3 class="mb-3">${header}</h3>
            <p class="text-muted mb-0">${description}</p>
        </div>
    </div>
</#macro>

<#macro portfolio src name>
    <div class="col-sm-6 col-lg-4">
        <a class="portfolio-box" href="${src}">
            <img class="img-fluid" src="${src}">
            <div class="portfolio-box-caption" style="background: rgba(74,83,118,.9);">
                <div class="portfolio-box-caption-content">
                    <div class="project-category text-faded"></div>
                    <div class="project-name"><span>${name}</span></div>
                </div>
            </div>
        </a></div>
</#macro>