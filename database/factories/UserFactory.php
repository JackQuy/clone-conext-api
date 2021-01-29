<?php

namespace Database\Factories;

use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Faker\Generator as Faker;

class UserFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = User::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name,
            'email' => $this->faker->unique()->safeEmail,
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
            'gender'=> 'male',
            'avatar' => 'https://media.sproutsocial.com/uploads/2017/02/10x-featured-social-media-image-size.png',
            'seek' => $this->faker->text,
            'place_id' => rand(1,3),
            'country_id' => rand(1,5),
            'expertise_id' => rand(1,5),
            'business_type_id' => rand(1,5),
            'work_place_id' => rand(1,5),
            'introduction' => $this->faker->text,
        ];
    }
}
