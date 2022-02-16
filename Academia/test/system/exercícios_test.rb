require "application_system_test_case"

class ExercíciosTest < ApplicationSystemTestCase
  setup do
    @exercício = exercícios(:one)
  end

  test "visiting the index" do
    visit exercícios_url
    assert_selector "h1", text: "Exercícios"
  end

  test "creating a Exercício" do
    visit exercícios_url
    click_on "New Exercício"

    fill_in "Modalidade", with: @exercício.modalidade
    fill_in "Valor", with: @exercício.valor
    click_on "Create Exercício"

    assert_text "Exercício was successfully created"
    click_on "Back"
  end

  test "updating a Exercício" do
    visit exercícios_url
    click_on "Edit", match: :first

    fill_in "Modalidade", with: @exercício.modalidade
    fill_in "Valor", with: @exercício.valor
    click_on "Update Exercício"

    assert_text "Exercício was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercício" do
    visit exercícios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercício was successfully destroyed"
  end
end
