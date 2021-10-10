package entity;

public class Mobile {

	private int id;
	private int price;
	private String model;
	private int battery;
	private String processor;
	private String frontCamera;
	private String backCamera;
	private int ram;
	private int rom;
	private String display;
	private double rating;
	private String os;
	private String release;
	private String brand;

	/**
	 * @return the price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(int price) {
		this.price = price;
	}

	/**
	 * @return the model
	 */
	public String getModel() {
		return model;
	}

	/**
	 * @param model the model to set
	 */
	public void setModel(String model) {
		this.model = model;
	}

	/**
	 * @return the battery
	 */
	public int getBattery() {
		return battery;
	}

	/**
	 * @param battery the battery to set
	 */
	public void setBattery(int battery) {
		this.battery = battery;
	}

	/**
	 * @return the processor
	 */
	public String getProcessor() {
		return processor;
	}

	/**
	 * @param processor the processor to set
	 */
	public void setProcessor(String processor) {
		this.processor = processor;
	}

	/**
	 * @return the frontCamera
	 */
	public String getFrontCamera() {
		return frontCamera;
	}

	/**
	 * @param frontCamera the frontCamera to set
	 */
	public void setFrontCamera(String frontCamera) {
		this.frontCamera = frontCamera;
	}

	/**
	 * @return the backCamera
	 */
	public String getBackCamera() {
		return backCamera;
	}

	/**
	 * @param backCamera the backCamera to set
	 */
	public void setBackCamera(String backCamera) {
		this.backCamera = backCamera;
	}

	/**
	 * @return the ram
	 */
	public int getRam() {
		return ram;
	}

	/**
	 * @param ram the ram to set
	 */
	public void setRam(int ram) {
		this.ram = ram;
	}

	/**
	 * @return the rom
	 */
	public int getRom() {
		return rom;
	}

	/**
	 * @param rom the rom to set
	 */
	public void setRom(int rom) {
		this.rom = rom;
	}

	/**
	 * @return the display
	 */
	public String getDisplay() {
		return display;
	}

	/**
	 * @param display the display to set
	 */
	public void setDisplay(String display) {
		this.display = display;
	}

	/**
	 * @return the rating
	 */
	public double getRating() {
		return rating;
	}

	/**
	 * @param rating the rating to set
	 */
	public void setRating(double rating) {
		this.rating = rating;
	}

	/**
	 * @return the os
	 */
	public String getOs() {
		return os;
	}

	/**
	 * @param os the os to set
	 */
	public void setOs(String os) {
		this.os = os;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the release
	 */
	public String getRelease() {
		return release;
	}

	/**
	 * @param release the release to set
	 */
	public void setRelease(String release) {
		this.release = release;
	}

	/**
	 * @return the brand
	 */
	public String getBrand() {
		return brand;
	}

	/**
	 * @param brand the brand to set
	 */
	public void setBrand(String brand) {
		this.brand = brand;
	}

	@Override
	public String toString() {
		return "Mobile [id=" + id + ", price=" + price + ", " + (model != null ? "model=" + model + ", " : "")
				+ "battery=" + battery + ", " + (processor != null ? "processor=" + processor + ", " : "")
				+ (frontCamera != null ? "frontCamera=" + frontCamera + ", " : "")
				+ (backCamera != null ? "backCamera=" + backCamera + ", " : "") + "ram=" + ram + ", rom=" + rom + ", "
				+ (display != null ? "display=" + display + ", " : "") + "rating=" + rating + ", "
				+ (os != null ? "os=" + os + ", " : "") + (release != null ? "release=" + release + ", " : "")
				+ (brand != null ? "brand=" + brand : "") + "]";
	}

}
