xml.instruct! :xml, standalone: :yes
xml.tag! 'age-declaration' do
  xml.tag! 'ageblock-basic' do
    xml.tag! 'age-issuer', AgeDeXml.domain
    xml.tag! 'last-change', AgeDeXml.last_change
    xml.tag! 'country', AgeDeXml.country
    xml.tag! 'label-version', AgeDeXml.label_version
    xml.tag! 'revisit-after', AgeDeXml.revisit_after
  end

  xml.tag! 'ageblock-labeltype' do
    xml.tag! :xmlfile, true
    xml.tag! :httpheader, false
    xml.tag! :htmlmeta, false
    xml.tag! 'label-z', false
    xml.tag! 'default-age', AgeDeXml.default_age
  end

  xml.tag! 'ageblock-labeltype-definition' do
    xml.tag! 'labeltype-xmlfile' do
      xml.tag! :label, class: :default do
        xml.tag! 'min-age', AgeDeXml.default_age
        xml.tag! 'default-age', AgeDeXml.default_age
      end
    end
  end
end
