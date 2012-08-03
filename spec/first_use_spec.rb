describe "Gem F1rst Use" do
  before do  
    #setup a virgin state
    NSUserDefaults.standardUserDefaults.removeObjectForKey("Websembly.FirstUse.version")
    NSUserDefaults.standardUserDefaults.removeObjectForKey("F1rstUse.INITIALIZED")
    NSUserDefaults.standardUserDefaults.removeObjectForKey("Websembly.FirstUse:spec_test_application")
    NSUserDefaults.standardUserDefaults.removeObjectForKey("Websembly.FirstUse:versiontest")
  end

  after do
  end

  it "should report initial run" do
    @ucase = FirstUse.new "Spec Test Application"
    ucase_first = @ucase.first_run?
    ucase_first.should.be.true?
  end

  it "should ignore the app_name case" do
    @lcase = FirstUse.new "spEc tesT appliCation"
    @lcase.runs.should.be > 0
    @lcase.reset
  end

  it "should contain a version" do
    @version_test = FirstUse.new "VERSIONTEST"
    ver = NSUserDefaults.standardUserDefaults.objectForKey("Websembly.FirstUse.version")
    ver.should != nil
  end

=begin
  it "should display uses" do
    @usage.runs.should >= 1
  end

  it "should show today's use" do
    dateToday = NSDate.date
    dateFormat = NSDateFormatter.alloc.init
    dateFormat.setDateFormat("MM/dd/yyyy")
    
    usage_hash = @usage.last_used
    usage_hash[:usa_slash].should.equal dateFormat.stringFromDate(dateToday)
  end
=end
  it "cleanup" do
    @final = FirstUse.new "Spec Test Application"
    @final.reset
    NSUserDefaults.standardUserDefaults.removeObjectForKey("Websembly.FirstUse.version")
    NSUserDefaults.standardUserDefaults.removeObjectForKey("F1rstUse.INITIALIZED")
    true.should.be.true?
  end
end
